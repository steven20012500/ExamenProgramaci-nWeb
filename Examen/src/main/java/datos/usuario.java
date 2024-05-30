package datos;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class usuario {
	private String nombre;
	private String cedula;
	private String correo;
	private String clave;
	private int estado;
	private Integer id_perfil;
	public String ingresarCliente()
	 {
	String result="";

	conexion con=new conexion();
	PreparedStatement pr=null;
	String sql= "INSERT INTO tb_usuario (id_per, id_est, nombre_us, cedula_us, correo_us, clave_us) "
            + "VALUES (?, ?, ?, ?, ?, ?)";
	 try{
	 pr=con.getConexion().prepareStatement(sql);
	 pr.setInt(1,2);
	 pr.setInt(2, this.getEstado());
	 pr.setString(3, this.getNombre());
	 pr.setString(4, this.getCedula());
	 pr.setString(5, this.getCorreo());
	 pr.setString(6, this.getClave());

	 if(pr.executeUpdate()==1)
	 {
	 result="Insercion correcta";
	 }
	 else
	 {
	 result="Error en insercion";
	 }
	 }
	catch(Exception ex)
	 {
		 result=ex.getMessage();
		 System.out.print(result);
		 }
		 finally
		 {
		 try
		 {
		 pr.close();
		 con.getConexion().close();
		 }
		 catch(Exception ex)
		 {
		 System.out.print(ex.getMessage());
		 }
		 }
		 return result;
		 }

	public String ingreso() throws SQLException {
		conexion con=new conexion();
		String insert = "INSERT INTO tb_usuario (id_us, id_per, id_est, nombre_us, cedula_us, correo_us, clave_us) "
	              + "VALUES (?, ?, ?, ?, ?, ?, ?)";
		PreparedStatement pstmt = null ;
				try {
					pstmt= con.getConexion().prepareStatement(insert);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		pstmt.setInt(1, 2);       // Assuming id_us is an int
		pstmt.setInt(2, 2);      // Assuming id_per is an int
		pstmt.setInt(3, getEstado());      // Assuming id_est is an int
		pstmt.setString(4, getNombre());
		pstmt.setString(5, getCedula());
		pstmt.setString(6, getCorreo());
		pstmt.setString(7, getClave());
		pstmt.executeUpdate();
		return insert;
		
	}
	public boolean verificarUsuario(String correo, String nclave) {
		{
			boolean respuesta=false;
			String sentencia= "Select * from tb_usuario where correo_us='"+correo+
			"' and clave_us='"+nclave+"';";
			//System.out.print(sentencia);
			try
			{
			ResultSet rs;
			conexion clsCon=new conexion();
			rs=clsCon.Consulta(sentencia);
			if(rs.next())
			{
			respuesta=true;
			this.setCorreo(correo);
			this.setClave(nclave);
			this.setId_perfil(rs.getInt(2));
			this.setNombre(rs.getString(4));
			}
			else
			{
			respuesta=false;
			rs.close();
			}
			}
			catch(Exception ex)
			{
			System.out.println( ex.getMessage());
			}
			return respuesta;
			}


	}
	public String agregarUser()
	{
		String result="";

		conexion con=new conexion();
		PreparedStatement pr=null;
		String sql= "INSERT INTO tb_usuario (id_per, id_est, nombre_us, cedula_us, correo_us, clave_us) "
	            + "VALUES (?, ?, ?, ?, ?, ?)";
		 try{
		 pr=con.getConexion().prepareStatement(sql);
		 pr.setInt(1, this.getId_perfil());
		 pr.setInt(2, this.getEstado());
		 pr.setString(3, this.getNombre());
		 pr.setString(4, this.getCedula());
		 pr.setString(5, this.getCorreo());
		 pr.setString(6,"654321");

		 if(pr.executeUpdate()==1)
		 {
		 result="Insercion correcta";
		 }
		 else
		 {
		 result="Error en insercion";
		 }
		 }
		catch(Exception ex)
		 {
			 result=ex.getMessage();
			 System.out.print(result);
			 }
			 finally
			 {
			 try
			 {
			 pr.close();
			 con.getConexion().close();
			 }
			 catch(Exception ex)
			 {
			 System.out.print(ex.getMessage());
			 }
			 }
			 return result;
			 }

	@Override
	public String toString() {
		return "Usuario [getCedula()=" + getCedula() + ", getClave()=" + getClave() + ", getCorreo()=" + getCorreo()
				+ ", getEstado()=" + getEstado() + ", getNombre()=" + getNombre() + "]";
	}


	public String getCedula() {
		return cedula;
			}

	public String getClave() {
		return clave;
	}

	public String getCorreo() {
		return correo;
	}

	public int getEstado() {
		return estado;
	}

	public String getNombre() {
		return nombre;
	}

	public Integer getId_perfil() {
		return id_perfil;
	}

	public void setId_perfil(Integer id_perfil) {
		this.id_perfil = id_perfil;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public void setCedula(String cedula) {
		this.cedula = cedula;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

	public void setClave(String clave) {
		this.clave = clave;
	}

	public void setEstado(int estado) {
		this.estado = estado;
	} 
	 
}