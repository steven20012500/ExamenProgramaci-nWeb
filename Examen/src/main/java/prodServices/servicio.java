package prodServices;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import datos.conexion;

public class servicio {
	private Integer id_serv;
	private Integer id_tipo;
	private String nombre_serv;
	private Double costo_serv;
	
	public servicio() {
		this.id_serv = 0;
		this.id_tipo = 0;
		this.nombre_serv = "";
		this.costo_serv = 0.0;
	}
	public servicio(Integer servicio,String nombre,Double precio) {	
		this.id_serv = servicio;
		this.nombre_serv = nombre;
		this.costo_serv =precio;
	}
	public String consultarTodo()
	{
	String sql="SELECT * FROM tb_servicio ORDER BY id_serv";
	conexion con=new conexion();
	String tabla="<table border=2><th>ID</th><th>Nombre</th><th>Precio</th>";
	ResultSet rs=null;
	rs=con.Consulta(sql);
	try {
	while(rs.next())
	{
	tabla+="<tr><td>"+rs.getInt(1)+"</td>"
	+ "<td>"+rs.getString(3)+"</td>"
	+ "<td>"+rs.getDouble(4)+"</td>"
	+ "<td> <a href= modificarS.jsp?cod=" + rs.getInt(1) + ">Modificar</a></td>"
	+ "<td> <a href= eliminarS.jsp?cod=" + rs.getInt(1) + ">Eliminar</a></td>"
	+ "</tr>";
	}
	} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
	System.out.print(e.getMessage());
	}
	tabla+="</table>";
	return tabla;
	}
	
	public String consultarTodoInvitado()
	{
		String sql="SELECT * FROM tb_servicio ORDER BY id_serv";
		conexion con=new conexion();
		String tabla="<table border=2><th>ID</th><th>Nombre</th><th>Precio</th>";
		ResultSet rs=null;
		rs=con.Consulta(sql);
		try {
		while(rs.next())
		{
		tabla+="<tr><td>"+rs.getInt(1)+"</td>"
		+ "<td>"+rs.getString(3)+"</td>"
		+ "<td>"+rs.getDouble(4)+"</td>"
		+ "</tr>";
		}
		} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		System.out.print(e.getMessage());
		}
		tabla+="</table>";
		return tabla;
	}
	public String buscarServicioCategoria(int cat) {
		String sentencia="SELECT nombre_serv, costo_serv FROM tb_servicio WHERE id_tipo="+cat;
		conexion con=new conexion();
		ResultSet rs=null;
		String resultado="<table border=3>";
		try
		{
		rs=con.Consulta(sentencia);
		while(rs.next())
		{
		resultado+="<tr><td>"+ rs.getString(1)+"</td>"
		 + "<td>"+rs.getDouble(2)+"</td></tr>";
		}
		resultado+="</table>";
		}
		catch(SQLException e)
		{
		System.out.print(e.getMessage());
		}
		System.out.print(resultado);
		return resultado;
		}
	
	//Consultar editar

	public String ConsulEditarServicio(int cod) {
		String resultado = "";
		conexion con = new conexion();
		ResultSet rs= null;
		String sql = "SELECT id_serv,id_tipo,nombre_serv"
				+ ",costo_serv FROM tb_servicio"
				+ " where id_serv ="+"'"+ cod +"'";
		try {
			rs = con.Consulta(sql);
			while (rs.next()) {
				setId_serv((rs.getInt(1)));
				setId_tipo(rs.getInt(2));
				setNombre_serv(rs.getString(3));
				setCosto_serv(rs.getDouble(4));
			}
		}catch (SQLException e) {
			System.out.print(e.getMessage());
	}
		System.out.print(resultado);
		return resultado;
	}

	public boolean ModificarServicio(servicio serv) {
		boolean agregado = false;
		conexion con = new conexion();
		String sql = "UPDATE tb_servicio SET nombre_serv='"+serv.getNombre_serv()+"', costo_serv = '"+serv.getCosto_serv()+"' "
		+"WHERE id_serv= '"+serv.getId_serv()+"';";
		try {
			con.Ejecutar(sql);
			agregado = true;
		} catch (Exception e) {
			agregado = false;
		}
		return agregado;
	}
	//Eliminar
	public boolean EliminarServicio(int cod) {
		boolean f = false;
		conexion con = new conexion();
		String sql= "delete from tb_servicio where id_serv= '"+cod+"'";
		try {
			con.Ejecutar(sql);
			f = true;
		} catch (Exception e) {
			f =false;
		}
		return f;
	}
	public String ingresarServicio(int cat,String nombre, double precio)
			{
			String result="";
			conexion con=new conexion();
			PreparedStatement pr=null;
			String sql="INSERT INTO tb_servicio (id_tipo,"
					+ "nombre_serv,costo_serv) "
					+ "VALUES(?,?,?)";
					try{
					pr=con.getConexion().prepareStatement(sql);
					pr.setInt(1,cat);
					pr.setString(2, nombre);
					pr.setDouble(3, precio);
					if(pr.executeUpdate()==1)
					{
					result="Inserción correcta";
					}
					else
					{
					result="Error en inserción";
					}
					}
					catch(Exception ex)
					{
					result=ex.getMessage();
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
		
	public String consultarServicio()
	{
	String sql="SELECT * FROM tb_servicio GROUP BY id_serv";
	conexion con=new conexion();
	String tabla="<table class=table table-striped><th>Servicio</th><th>Añadir al carrito</th>";
	ResultSet rs=null;
	rs=con.Consulta(sql);
	try {
	while(rs.next())
	{
	tabla+="<tr><td>"+rs.getString(3)+"</td>"
	+ "<td><input type=checkbox name=servicios value="+rs.getInt(1)+"</td>"
	+ "</tr>";
	}
	} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
	System.out.print(e.getMessage());
	}
	tabla+="</table>";
	return tabla;
	}
	public Double consultarPrecio(int i)
	{
		double precio = 0;
		String sql="SELECT * FROM tb_producto GROUP BY "+i;
		conexion con=new conexion();
		ResultSet rs=null;
		rs=con.Consulta(sql);
		try {
		while(rs.next())
		{
		precio=rs.getInt(5);
	
		}
		} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		System.out.print(e.getMessage());
		}
		return precio;	
		
		
	}
	public servicio ConsultarServicio(int cod) {
		servicio srv= new servicio();
		String resultado = "";
		conexion con = new conexion();
		ResultSet rs= null;
		String sql = "SELECT id_serv,id_tipo,nombre_serv"
				+ ",costo_serv FROM tb_servicio"
				+ " where id_serv ="+"'"+ cod +"'";
		try {
			rs = con.Consulta(sql);
			while (rs.next()) {
				srv.setId_serv((rs.getInt(1)));
				srv.setId_tipo(rs.getInt(2));
				srv.setNombre_serv(rs.getString(3));
				srv.setCosto_serv(rs.getDouble(4));
			}
		}catch (SQLException e) {
			System.out.print(e.getMessage());
	}
		System.out.print(resultado);
		return srv;
	}
	public Integer getId_serv() {
		return id_serv;
	}
	public void setId_serv(Integer id_serv) {
		this.id_serv = id_serv;
	}
	public Integer getId_tipo() {
		return id_tipo;
	}
	public void setId_tipo(Integer id_tipo) {
		this.id_tipo = id_tipo;
	}
	public String getNombre_serv() {
		return nombre_serv;
	}
	public void setNombre_serv(String nombre_serv) {
		this.nombre_serv = nombre_serv;
	}
	public Double getCosto_serv() {
		return costo_serv;
	}
	public void setCosto_serv(Double costo_serv) {
		this.costo_serv = costo_serv;
	}

	
	}