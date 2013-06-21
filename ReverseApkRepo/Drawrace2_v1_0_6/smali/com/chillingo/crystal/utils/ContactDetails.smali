.class public Lcom/chillingo/crystal/utils/ContactDetails;
.super Ljava/lang/Object;


# instance fields
.field private _emailAddresses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _image:Ljava/lang/String;

.field private _name:Ljava/lang/String;

.field private _phoneNumbers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/chillingo/crystal/utils/ContactDetails;->_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/chillingo/crystal/utils/ContactDetails;->_emailAddresses:Ljava/util/Map;

    iput-object v0, p0, Lcom/chillingo/crystal/utils/ContactDetails;->_image:Ljava/lang/String;

    iput-object v0, p0, Lcom/chillingo/crystal/utils/ContactDetails;->_phoneNumbers:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/chillingo/crystal/utils/ContactDetails;->_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/chillingo/crystal/utils/ContactDetails;->_emailAddresses:Ljava/util/Map;

    iput-object v0, p0, Lcom/chillingo/crystal/utils/ContactDetails;->_image:Ljava/lang/String;

    iput-object v0, p0, Lcom/chillingo/crystal/utils/ContactDetails;->_phoneNumbers:Ljava/util/Map;

    iput-object p1, p0, Lcom/chillingo/crystal/utils/ContactDetails;->_name:Ljava/lang/String;

    iput-object p3, p0, Lcom/chillingo/crystal/utils/ContactDetails;->_image:Ljava/lang/String;

    iput-object p2, p0, Lcom/chillingo/crystal/utils/ContactDetails;->_emailAddresses:Ljava/util/Map;

    iput-object p4, p0, Lcom/chillingo/crystal/utils/ContactDetails;->_phoneNumbers:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public emailAddresses()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/chillingo/crystal/utils/ContactDetails;->_emailAddresses:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chillingo/crystal/utils/ContactDetails;->_emailAddresses:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/chillingo/crystal/utils/ContactDetails;->_emailAddresses:Ljava/util/Map;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/utils/ContactDetails;->_image:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/utils/ContactDetails;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public phoneNumbers()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/chillingo/crystal/utils/ContactDetails;->_phoneNumbers:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chillingo/crystal/utils/ContactDetails;->_phoneNumbers:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/chillingo/crystal/utils/ContactDetails;->_phoneNumbers:Ljava/util/Map;

    return-object v0
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/utils/ContactDetails;->_image:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/utils/ContactDetails;->_name:Ljava/lang/String;

    return-void
.end method
