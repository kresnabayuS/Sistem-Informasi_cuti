/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
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
@Table(name = "JABATAN")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Jabatan.findAll", query = "SELECT j FROM Jabatan j")
    , @NamedQuery(name = "Jabatan.findByIdJabatan", query = "SELECT j FROM Jabatan j WHERE j.idJabatan = :idJabatan")
    , @NamedQuery(name = "Jabatan.findByNamaJabatan", query = "SELECT j FROM Jabatan j WHERE j.namaJabatan = :namaJabatan")})
public class Jabatan implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "ID_JABATAN")
    private String idJabatan;
    @Column(name = "NAMA_JABATAN")
    private String namaJabatan;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idJabatan", fetch = FetchType.LAZY)
    private List<Karyawan> karyawanList;

    public Jabatan(String idJabatan, String namaJabatan) {
        this.idJabatan = idJabatan;
        this.namaJabatan = namaJabatan;
    }

    public Jabatan() {
    }

    public Jabatan(String idJabatan) {
        this.idJabatan = idJabatan;
    }

    public String getIdJabatan() {
        return idJabatan;
    }

    public void setIdJabatan(String idJabatan) {
        this.idJabatan = idJabatan;
    }

    public String getNamaJabatan() {
        return namaJabatan;
    }

    public void setNamaJabatan(String namaJabatan) {
        this.namaJabatan = namaJabatan;
    }

    @XmlTransient
    public List<Karyawan> getKaryawanList() {
        return karyawanList;
    }

    public void setKaryawanList(List<Karyawan> karyawanList) {
        this.karyawanList = karyawanList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idJabatan != null ? idJabatan.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Jabatan)) {
            return false;
        }
        Jabatan other = (Jabatan) object;
        if ((this.idJabatan == null && other.idJabatan != null) || (this.idJabatan != null && !this.idJabatan.equals(other.idJabatan))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.Jabatan[ idJabatan=" + idJabatan + " ]";
    }
    
}
