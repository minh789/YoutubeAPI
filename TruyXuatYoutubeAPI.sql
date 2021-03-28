USE YoutubeAPI
CREATE PROC USP_Login	
@userName NVARCHAR(100),@passWord NVARCHAR(100)
AS
BEGIN
	SELECT* FROM dbo.Login WHERE  @userName=UserName AND @passWord=Password  
END
GO 
EXECUTE dbo.USP_Login @userName = N'minh1701', -- nvarchar(100)
                      @passWord = N'170120'  -- nvarchar(100)

CREATE PROC USP_Resigner
@userName NVARCHAR(100),@passWord NVARCHAR(100)
AS
BEGIN
			INSERT dbo.Login
			(
			    UserName,
			    Password
			)
			VALUES
			(  @userName, -- UserName - nvarchar(50)
			   @passWord  -- Password - nvarchar(50)
			    )
END
GO 
