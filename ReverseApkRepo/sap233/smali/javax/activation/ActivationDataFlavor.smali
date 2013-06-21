.class public Ljavax/activation/ActivationDataFlavor;
.super Lmyjava/awt/datatransfer/DataFlavor;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljavax/activation/MimeType;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lmyjava/awt/datatransfer/DataFlavor;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->a:Ljava/lang/String;

    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->b:Ljavax/activation/MimeType;

    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->c:Ljava/lang/String;

    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->d:Ljava/lang/Class;

    invoke-super {p0}, Lmyjava/awt/datatransfer/DataFlavor;->getMimeType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->a:Ljava/lang/String;

    iput-object p1, p0, Ljavax/activation/ActivationDataFlavor;->d:Ljava/lang/Class;

    iput-object p2, p0, Ljavax/activation/ActivationDataFlavor;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3}, Lmyjava/awt/datatransfer/DataFlavor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->a:Ljava/lang/String;

    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->b:Ljavax/activation/MimeType;

    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->c:Ljava/lang/String;

    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->d:Ljava/lang/Class;

    iput-object p2, p0, Ljavax/activation/ActivationDataFlavor;->a:Ljava/lang/String;

    iput-object p3, p0, Ljavax/activation/ActivationDataFlavor;->c:Ljava/lang/String;

    iput-object p1, p0, Ljavax/activation/ActivationDataFlavor;->d:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lmyjava/awt/datatransfer/DataFlavor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->a:Ljava/lang/String;

    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->b:Ljavax/activation/MimeType;

    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->c:Ljava/lang/String;

    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->d:Ljava/lang/Class;

    iput-object p1, p0, Ljavax/activation/ActivationDataFlavor;->a:Ljava/lang/String;

    :try_start_0
    const-string v0, "java.io.InputStream"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->d:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object p2, p0, Ljavax/activation/ActivationDataFlavor;->c:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public equals(Lmyjava/awt/datatransfer/DataFlavor;)Z
    .locals 2

    invoke-virtual {p0, p1}, Ljavax/activation/ActivationDataFlavor;->isMimeTypeEqual(Lmyjava/awt/datatransfer/DataFlavor;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lmyjava/awt/datatransfer/DataFlavor;->getRepresentationClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Ljavax/activation/ActivationDataFlavor;->d:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHumanPresentableName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/activation/ActivationDataFlavor;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/activation/ActivationDataFlavor;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getRepresentationClass()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Ljavax/activation/ActivationDataFlavor;->d:Ljava/lang/Class;

    return-object v0
.end method

.method public isMimeTypeEqual(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Ljavax/activation/ActivationDataFlavor;->b:Ljavax/activation/MimeType;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/activation/MimeType;

    iget-object v1, p0, Ljavax/activation/ActivationDataFlavor;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljavax/activation/MimeType;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->b:Ljavax/activation/MimeType;

    :cond_0
    new-instance v0, Ljavax/activation/MimeType;

    invoke-direct {v0, p1}, Ljavax/activation/MimeType;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/activation/MimeTypeParseException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Ljavax/activation/ActivationDataFlavor;->b:Ljavax/activation/MimeType;

    invoke-virtual {v1, v0}, Ljavax/activation/MimeType;->match(Ljavax/activation/MimeType;)Z

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Ljavax/activation/ActivationDataFlavor;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method protected normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method protected normalizeMimeTypeParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p2
.end method

.method public setHumanPresentableName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljavax/activation/ActivationDataFlavor;->c:Ljava/lang/String;

    return-void
.end method
