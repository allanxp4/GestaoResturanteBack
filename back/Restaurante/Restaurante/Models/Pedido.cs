//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Restaurante.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Pedido
    {
        public int Id { get; set; }
        public bool Viagem { get; set; }
        public int ProdutoId { get; set; }
        public string Observacoes { get; set; }
        public int ContaId { get; set; }
        public System.DateTime DataHora { get; set; }
        public int UsuarioId { get; set; }
    
        public virtual Conta Conta { get; set; }
        public virtual Produto Produto { get; set; }
        public virtual Usuario UsuarioAtendimento { get; set; }
    }
}
