/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
import java.math.BigInteger;
import java.util.Date;
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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
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
    @NamedQuery(name = "CutiKhusus.findAll", query = "SELECT c FROM CutiKhusus c")
    , @NamedQuery(name = "CutiKhusus.findByIdCutiKhusus", query = "SELECT c FROM CutiKhusus c WHERE c.idCutiKhusus = :idCutiKhusus")
    , @NamedQuery(name = "CutiKhusus.findByNamaCuti", query = "SELECT c FROM CutiKhusus c WHERE c.namaCuti = :namaCuti")
    , @NamedQuery(name = "CutiKhusus.findByLamaCutiKhusus", query = "SELECT c FROM CutiKhusus c WHERE c.lamaCutiKhusus = :lamaCutiKhusus")
    , @NamedQuery(name = "CutiKhusus.findByTanggalAwal", query = "SELECT c FROM CutiKhusus c WHERE c.tanggalAwal = :tanggalAwal")
    , @NamedQuery(name = "CutiKhusus.findByTanggalAkhir", query = "SELECT c FROM CutiKhusus c WHERE c.tanggalAkhir = :tanggalAkhir")})
public class CutiKhusus implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "ID_CUTI_KHUSUS")
    private String idCutiKhusus;
    @Column(name = "NAMA_CUTI")
    private String namaCuti;
    @Column(name = "LAMA_CUTI_KHUSUS")
    private BigInteger lamaCutiKhusus;
    @Basic(optional = false)
    @Column(name = "TANGGAL_AWAL")
    @Temporal(TemporalType.TIMESTAMP)
    private Date tanggalAwal;
    @Basic(optional = false)
    @Column(name = "TANGGAL_AKHIR")
    @Temporal(TemporalType.TIMESTAMP)
    private Date tanggalAkhir;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idCutiKhusus", fetch = FetchType.LAZY)
    private List<Dtcutikhusus> dtcutikhususList;

    public CutiKhusus(String idCutiKhusus, String namaCuti, BigInteger lamaCutiKhusus, Date tanggalAwal, Date tanggalAkhir) {
        this.idCutiKhusus = idCutiKhusus;
        this.namaCuti = namaCuti;
        this.lamaCutiKhusus = lamaCutiKhusus;
        this.tanggalAwal = tanggalAwal;
        this.tanggalAkhir = tanggalAkhir;
    }

    public CutiKhusus() {
    }

    public CutiKhusus(String idCutiKhusus) {
        this.idCutiKhusus = idCutiKhusus;
    }

    public CutiKhusus(String idCutiKhusus, Date tanggalAwal, Date tanggalAkhir) {
        this.idCutiKhusus = idCutiKhusus;
        this.tanggalAwal = tanggalAwal;
        this.tanggalAkhir = tanggalAkhir;
    }

    public String getIdCutiKhusus() {
        return idCutiKhusus;
    }

    public void setIdCutiKhusus(String idCutiKhusus) {
        this.idCutiKhusus = idCutiKhusus;
    }

    public String getNamaCuti() {
        return namaCuti;
    }

    public void setNamaCuti(String namaCuti) {
        this.namaCuti = namaCuti;
    }

    public BigInteger getLamaCutiKhusus() {
        return lamaCutiKhusus;
    }

    public void setLamaCutiKhusus(BigInteger lamaCutiKhusus) {
        this.lamaCutiKhusus = lamaCutiKhusus;
    }

    public Date getTanggalAwal() {
        return tanggalAwal;
    }

    public void setTanggalAwal(Date tanggalAwal) {
        this.tanggalAwal = tanggalAwal;
    }

    public Date getTanggalAkhir() {
        return tanggalAkhir;
    }

    public void setTanggalAkhir(Date tanggalAkhir) {
        this.tanggalAkhir = tanggalAkhir;
    }

    @XmlTransient
    public List<Dtcutikhusus> getDtcutikhususList() {
        return dtcutikhususList;
    }

    public void setDtcutikhususList(List<Dtcutikhusus> dtcutikhususList) {
        this.dtcutikhususList = dtcutikhususList;
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
        return "entities.CutiKhusus[ idCutiKhusus=" + idCutiKhusus + " ]";
    }
    
}
