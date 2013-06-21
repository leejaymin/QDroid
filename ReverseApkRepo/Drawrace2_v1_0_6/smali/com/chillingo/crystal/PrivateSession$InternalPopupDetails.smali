.class Lcom/chillingo/crystal/PrivateSession$InternalPopupDetails;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/crystal/PrivateSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalPopupDetails"
.end annotation


# instance fields
.field private _body:Ljava/lang/String;

.field private _title:Ljava/lang/String;

.field final synthetic this$0:Lcom/chillingo/crystal/PrivateSession;


# direct methods
.method public constructor <init>(Lcom/chillingo/crystal/PrivateSession;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/PrivateSession$InternalPopupDetails;->this$0:Lcom/chillingo/crystal/PrivateSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/chillingo/crystal/PrivateSession$InternalPopupDetails;->_title:Ljava/lang/String;

    iput-object p3, p0, Lcom/chillingo/crystal/PrivateSession$InternalPopupDetails;->_body:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public body()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession$InternalPopupDetails;->_body:Ljava/lang/String;

    return-object v0
.end method

.method public title()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession$InternalPopupDetails;->_title:Ljava/lang/String;

    return-object v0
.end method
