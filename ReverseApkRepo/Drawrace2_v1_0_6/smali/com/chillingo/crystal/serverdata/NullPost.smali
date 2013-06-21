.class public Lcom/chillingo/crystal/serverdata/NullPost;
.super Lcom/chillingo/crystal/serverdata/AbstractServerData;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/chillingo/crystal/serverdata/AbstractServerData;-><init>()V

    sget-object v0, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->NullPost:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    iput-object v0, p0, Lcom/chillingo/crystal/serverdata/NullPost;->_type:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    invoke-virtual {p0, p1}, Lcom/chillingo/crystal/serverdata/NullPost;->setUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public shouldPost()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
