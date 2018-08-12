/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
import java.math.BigInteger;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author kresna bayu
 */
@Entity
@Table(name = "CUTI_KHUSUS")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "CutiKhusus_1.findAll", query = "SELECT c FROM CutiKhusus_1 c")
    , @NamedQuery(name = "CutiKhusus_1.findByIdCutiKhusus", query = "SELECT c FROM CutiKhusus_1 c WHERE c.idCutiKhusus = :idCutiKhusus")
    , @NamedQuery(name = "CutiKhusus_1.findByKeteranganCuti", query = "SELECT c FROM CutiKhusus_1 c WHERE c.keteranganCuti = :keteranganCuti")
    , @NamedQuery(name = "CutiKhusus_1.findByLamaCutiKhusus", query = "SELECT c FROM CutiKhusus_1 c WHERE c.lamaCutiKhusus = :lamaCutiKhusus")})
public class CutiKhusus implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "ID_CUTI_KHUSUS")
    private String idCutiKhusus;
    @Column(name = "KETERANGAN_CUTI")
    private String keteranganCuti;
    @Column(name = "LAMA_CUTI_KHUSUS")
    private BigInteger lamaCutiKhusus;
    @OneToMany(mappedBy = "idCutiKhusus")
    private List<Cuti> cutiList;

    public CutiKhusus(String idCutiKhusus, String keteranganCuti, BigInteger lamaCutiKhusus) {
        this.idCutiKhusus = idCutiKhusus;
        this.keteranganCuti = keteranganCuti;
        this.lamaCutiKhusus = lamaCutiKhusus;
    }


    public CutiKhusus() {
    }

    public CutiKhusus(String idCutiKhusus) {
        this.idCutiKhusus = idCutiKhusus;
    }

    public String getIdCutiKhusus() {
        return idCutiKhusus;
    }

    public void setIdCutiKhusus(String idCutiKhusus) {
        this.idCutiKhusus = idCutiKhusus;
    }

    public String getKeteranganCuti() {
        return keteranganCuti;
    }

    public void setKeteranganCuti(String keteranganCuti) {
        this.keteranganCuti = keteranganCuti;
    }

    public BigInteger getLamaCutiKhusus() {
        return lamaCutiKhusus;
    }

    public void setLamaCutiKhusus(BigInteger lamaCutiKhusus) {
        this.lamaCutiKhusus = lamaCutiKhusus;
    }

    @XmlTransient
    public List<Cuti> getCutiList() {
        return cutiList;
    }

    public void setCutiList(List<Cuti> cutiList) {
        this.cutiList = cutiList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idCutiKhusus != null ? idCutiKhusus.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof CutiKhusus)) {
            return false;
        }
        CutiKhusus other = (CutiKhusus) object;
        if ((this.idCutiKhusus == null && other.idCutiKhusus != null) || (this.idCutiKhusus != null && !this.idCutiKhusus.equals(other.idCutiKhusus))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.CutiKhusus_1[ idCutiKhusus=" + idCutiKhusus + " ]";
    }
    
}
