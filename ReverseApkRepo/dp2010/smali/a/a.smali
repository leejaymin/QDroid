.class public La/a;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field public static b:Ljava/lang/String;

.field private static c:Ljava/util/Properties;

.field private static d:La/e/e;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v0, 0x0

    sput v0, La/a;->a:I

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, La/a;->c:Ljava/util/Properties;

    const-string v0, "Cp850"

    sput-object v0, La/a;->b:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {}, La/e/e;->a()La/e/e;

    move-result-object v1

    sput-object v1, La/a;->d:La/e/e;

    :try_start_0
    const-string v1, "jcifs.properties"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_0

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_1

    sget-object v1, La/a;->c:Ljava/util/Properties;

    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :try_start_1
    sget-object v1, La/a;->c:Ljava/util/Properties;

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    :goto_1
    const-string v0, "jcifs.util.loglevel"

    invoke-static {v0, v3}, La/a;->a(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v3, :cond_4

    invoke-static {v0}, La/e/e;->a(I)V

    :cond_4
    :try_start_3
    const-string v0, ""

    sget-object v1, La/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    sget-object v0, La/a;->d:La/e/e;

    sget v0, La/e/e;->a:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_5

    :try_start_4
    sget-object v0, La/a;->c:Ljava/util/Properties;

    sget-object v1, La/a;->d:La/e/e;

    const-string v2, "JCIFS PROPERTIES"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_5
    :goto_3
    return-void

    :catch_0
    move-exception v1

    :try_start_5
    sget-object v1, La/a;->d:La/e/e;

    sget v1, La/e/e;->a:I

    if-le v1, v4, :cond_2

    sget-object v1, La/a;->d:La/e/e;

    const-string v2, "SecurityException: jcifs will ignore System properties"

    invoke-virtual {v1, v2}, La/e/e;->println(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, La/a;->d:La/e/e;

    sget v1, La/e/e;->a:I

    if-lez v1, :cond_3

    sget-object v1, La/a;->d:La/e/e;

    invoke-virtual {v0, v1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_1

    :catch_2
    move-exception v0

    sget-object v0, La/a;->d:La/e/e;

    sget v0, La/e/e;->a:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_6

    sget-object v0, La/a;->d:La/e/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WARNING: The default OEM encoding "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, La/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not appear to be supported by this JRE. The default encoding will be US-ASCII."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, La/e/e;->println(Ljava/lang/String;)V

    :cond_6
    const-string v0, "US-ASCII"

    sput-object v0, La/a;->b:Ljava/lang/String;

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_3
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;I)I
    .locals 2

    sget-object v0, La/a;->c:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    :cond_0
    :goto_0
    return p1

    :catch_0
    move-exception v0

    sget-object v1, La/a;->d:La/e/e;

    sget v1, La/e/e;->a:I

    if-lez v1, :cond_0

    sget-object v1, La/a;->d:La/e/e;

    invoke-virtual {v0, v1}, Ljava/lang/NumberFormatException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;J)J
    .locals 2

    sget-object v0, La/a;->c:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    :cond_0
    :goto_0
    return-wide p1

    :catch_0
    move-exception v0

    sget-object v1, La/a;->d:La/e/e;

    sget v1, La/e/e;->a:I

    if-lez v1, :cond_0

    sget-object v1, La/a;->d:La/e/e;

    invoke-virtual {v0, v1}, Ljava/lang/NumberFormatException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, La/a;->c:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, La/a;->c:Ljava/util/Properties;

    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a()Ljava/net/InetAddress;
    .locals 5

    sget-object v0, La/a;->c:Ljava/util/Properties;

    const-string v1, "jcifs.smb.client.laddr"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    sget-object v2, La/a;->d:La/e/e;

    sget v2, La/e/e;->a:I

    if-lez v2, :cond_0

    sget-object v2, La/a;->d:La/e/e;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Ignoring jcifs.smb.client.laddr address: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, La/e/e;->println(Ljava/lang/String;)V

    sget-object v0, La/a;->d:La/e/e;

    invoke-virtual {v1, v0}, Ljava/net/UnknownHostException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 3

    sget-object v0, La/a;->c:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :cond_0
    :goto_0
    return-object p1

    :catch_0
    move-exception v1

    sget-object v2, La/a;->d:La/e/e;

    sget v2, La/e/e;->a:I

    if-lez v2, :cond_0

    sget-object v2, La/a;->d:La/e/e;

    invoke-virtual {v2, v0}, La/e/e;->println(Ljava/lang/String;)V

    sget-object v0, La/a;->d:La/e/e;

    invoke-virtual {v1, v0}, Ljava/net/UnknownHostException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Z)Z
    .locals 2

    sget-object v0, La/a;->c:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    :cond_0
    return p1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;[Ljava/net/InetAddress;)[Ljava/net/InetAddress;
    .locals 6

    sget-object v0, La/a;->c:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, v0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v0, v3, [Ljava/net/InetAddress;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    :try_start_0
    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    aput-object v5, v0, v1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, La/a;->d:La/e/e;

    sget v1, La/e/e;->a:I

    if-lez v1, :cond_0

    sget-object v1, La/a;->d:La/e/e;

    invoke-virtual {v1, v4}, La/e/e;->println(Ljava/lang/String;)V

    sget-object v1, La/a;->d:La/e/e;

    invoke-virtual {v0, v1}, Ljava/net/UnknownHostException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_0
    :goto_1
    return-object p2

    :cond_1
    move-object p2, v0

    goto :goto_1
.end method
