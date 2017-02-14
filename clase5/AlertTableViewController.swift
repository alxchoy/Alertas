//
//  AlertTableViewController.swift
//  clase5
//
//  Created by Diego on 6/02/17.
//  Copyright © 2017 Consorcio HBO. All rights reserved.
//

import UIKit

class AlertTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print("viewDidLoad")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        var alert:UIAlertController
        
        switch indexPath.section {
        case 0:
            switch indexPath.row {
            case 0:
                alert = UIAlertController(title: "Alert", message: "Alerta Simple", preferredStyle: UIAlertControllerStyle.alert)
            case 1:
                alert = UIAlertController(title: "Alert", message: "Alerta con botón OK", preferredStyle: UIAlertControllerStyle.alert)
                
                let actionOK = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { (action) in
                })
                
                alert.addAction(actionOK)
            case 2:
                alert = UIAlertController(title: "Alert", message: "Alerta con acciones", preferredStyle: UIAlertControllerStyle.alert)
                
                let actionOK = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { (action) in
                        print("Presiono OK")
                })
                let actionCancel = UIAlertAction(title: "Cancelar", style: UIAlertActionStyle.cancel, handler: { (action) in
                    print("Presiono Cancelar")
                })
                
                alert.addAction(actionOK)
                alert.addAction(actionCancel)
            default:
                alert = UIAlertController(title: "Alert", message: "Alerta con texto", preferredStyle: UIAlertControllerStyle.alert)
                
                alert.addTextField(configurationHandler: { (textField) in
                    textField.placeholder = "Ingrese texto"
                })
                
                let actionOK = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { (action) in
                    
                    let texto = alert.textFields?[0].text!
                    print(texto!)
                })
                
                alert.addAction(actionOK)
            }
        default:
            
            switch indexPath.row {
            case 0:
                alert = UIAlertController(title: "Alert", message: "Action Sheet Simple", preferredStyle: UIAlertControllerStyle.actionSheet)
            case 1:
                alert = UIAlertController(title: "Alert", message: "Action Sheet con Acciones", preferredStyle: UIAlertControllerStyle.actionSheet)
                
                let actionOK = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { (action) in
                    print("Presiono OK")
                })
                let actionCancel = UIAlertAction(title: "Cancelar", style: UIAlertActionStyle.cancel, handler: { (action) in
                    print("Presiono Cancelar")
                })
                
                alert.addAction(actionOK)
                alert.addAction(actionCancel)
            default:
                alert = UIAlertController(title: "Alert", message: "Alerta con acciones", preferredStyle: UIAlertControllerStyle.actionSheet)
                
                let actionOK = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { (action) in
                    print("Presiono OK")
                })
                let actionCancel = UIAlertAction(title: "Cancelar", style: UIAlertActionStyle.cancel, handler: { (action) in
                    print("Presiono Cancelar")
                })
                
                let actionDestructive = UIAlertAction(title: "Eliminar", style: UIAlertActionStyle.destructive, handler: { (action) in
                    print("Presiono Eliminar")
                })
                
                alert.addAction(actionOK)
                alert.addAction(actionCancel)
                alert.addAction(actionDestructive)
            }
            
            alert.popoverPresentationController?.sourceView = tableView.cellForRow(at: indexPath)
        }
        
        self.present(alert, animated: true) {}
    }
    
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation
    /*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let secondViewController = segue.destination as! secViewController
        secondViewController.parametro = parametro
        
        
    }
    */

}
