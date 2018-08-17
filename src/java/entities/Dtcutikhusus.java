/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author kresna bayu
 */
@Entity
@Table(name = "DTCUTIKHUSUS")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Dtcutikhusus.findAll", query = "SELECT d FROM Dtcutikhusus d")
    , @NamedQuery(name = "Dtcutikhusus.findByIdDetailKhusus", query = "SELECT d FROM Dtcutikhusus d WHERE d.idDetailKhusus = :idDetailKhusus")
    , @NamedQuery(name = "Dtcutikhusus.findByStatus", query = "SELECT d FROM Dtcutikhusus d WHERE d.status = :status")})
public class Dtcutikhusus implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "ID_DETAIL_KHUSUS")
    private String idDetailKhusus;
    @Column(name = "STATUS")
    private String status;
    @JoinColumn(name = "ID_CUTI_KHUSUS", referencedColumnName = "ID_CUTI_KHUSUS")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private CutiKhusus idCutiKhusus;
    @JoinColumn(name = "ID_KARYAWAN", referencedColumnName = "ID_KARYAWAN")
    @ManyToOne(fetch = FetchType.LAZY)
    private Karyawan idKaryawan;

    public Dtcutikhusus(String idDetailKhusus, String status, CutiKhusus idCutiKhusus, Karyawan idKaryawan) {
        this.idDetailKhusus = idDetailKhusus;
        this.status = status;
        this.idCutiKhusus = idCutiKhusus;
        this.idKaryawan = idKaryawan;
    }

    public Dtcutikhusus() {
    }

    public Dtcutikhusus(String idDetailKhusus) {
        this.idDetailKhusus = idDetailKhusus;
    }

    public String getIdDetailKhusus() {
        return idDetailKhusus;
    }

    public void setIdDetailKhusus(String idDetailKhusus) {
        this.idDetailKhusus = idDetailKhusus;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public CutiKhusus getIdCutiKhusus() {
        return idCutiKhusus;
    }

    public void setIdCutiKhusus(CutiKhusus idCutiKhusus) {
        this.idCutiKhusus = idCutiKhusus;
    }

    public Karyawan getIdKaryawan() {
        return idKaryawan;
    }

    public void setIdKaryawan(Karyawan idKaryawan) {
        this.idKaryawan = idKaryawan;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idDetailKhusus != null ? idDetailKhusus.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Dtcutikhusus)) {
            return false;
        }
        Dtcutikhusus other = (Dtcutikhusus) object;
        if ((this.idDetailKhusus == null && other.idDetailKhusus != null) || (this.idDetailKhusus != null && !this.idDetailKhusus.equals(other.idDetailKhusus))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.Dtcutikhusus[ idDetailKhusus=" + idDetailKhusus + " ]";
    }
    
}
