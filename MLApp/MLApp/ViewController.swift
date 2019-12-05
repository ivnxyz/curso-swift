//
//  ViewController.swift
//  MLApp
//
//  Created by Iván Martínez on 03/12/19.
//  Copyright © 2019 Iván Martínez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Atributos
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    
    private var imagePickerController: UIImagePickerController?
    
    // MARK: - ViewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Acciones
    
    @IBAction func analyzeButtonPressed(_ sender: UIButton) {
        if let image = imageView.image {
            do {
                let classifier = Model()
                let size = CGSize(width: 224, height: 224)
                let result = try classifier.prediction(data: image.resize(to: size)!.pixelBuffer()!)
                
                resultLabel.text = result.classLabel
            } catch (let error) {
                print("Ocurrió un eror: \(error)")
            }
        }
    }
    
    @IBAction func selectAnImageButtonPressed(_ sender: UIButton) {
        // Crear un controlador para la cámara y configurarlo
        imagePickerController = UIImagePickerController()
        imagePickerController?.delegate = self
        imagePickerController?.sourceType = .camera
        imagePickerController?.allowsEditing = true
        
        // Mostrar el controlador
        present(imagePickerController!, animated: true, completion: nil)
    }
    

}

extension ViewController: UIImagePickerControllerDelegate {
    
    // MARK: - UIImagePickerControllerDelegate
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        // Ocultar el controlador
        picker.dismiss(animated: true, completion: nil)
        
        // Mostrar la imagen editada
        imageView.image = info[UIImagePickerController.InfoKey.editedImage] as? UIImage
    }
    
    
}

extension ViewController: UINavigationControllerDelegate {
    
    // MARK: - UINavigationControllerDelegate
    
}

