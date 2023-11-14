/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package projetovendas.controller;

import projetovendas.interfaces.IOperacao;
import projetovendas.model.Endereco;

/**
 *
 * @author aluno
 */
public class EnderecoController implements IOperacao{
    
    private Endereco endereco;

    @Override
    public void cadastrar() {
        endereco.cadastrar();
    }

    @Override
    public boolean alterar() {
    return false;
    }

    @Override
    public boolean excluir() {
      return false;
    }

    @Override
    public void cancelar() {
      
    }

    public Endereco getEndereco() {
        return endereco;
    }

    public void setEndereco(Endereco endereco) {
        this.endereco = endereco;
    }
    
    
    
}
