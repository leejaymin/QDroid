.class Lcom/sugree/twitter/TwDialog$TwitterPinCatcher;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sugree/twitter/TwDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwitterPinCatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sugree/twitter/TwDialog;


# direct methods
.method private constructor <init>(Lcom/sugree/twitter/TwDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sugree/twitter/TwDialog$TwitterPinCatcher;->this$0:Lcom/sugree/twitter/TwDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sugree/twitter/TwDialog;Lcom/sugree/twitter/TwDialog$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sugree/twitter/TwDialog$TwitterPinCatcher;-><init>(Lcom/sugree/twitter/TwDialog;)V

    return-void
.end method


# virtual methods
.method public pinFound(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x7

    const/4 v1, 0x0

    const-string v0, "Crystal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TwitterPinCatcher.pinFound() called with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v5, :cond_1

    move v0, v1

    move v2, v1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_0

    const/16 v4, 0x39

    if-le v3, v4, :cond_3

    :cond_0
    if-ne v2, v5, :cond_2

    sub-int v1, v0, v2

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Lcom/sugree/twitter/TwDialog$TwitterPinCatcher;->this$0:Lcom/sugree/twitter/TwDialog;

    #setter for: Lcom/sugree/twitter/TwDialog;->_foundPin:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/sugree/twitter/TwDialog;->access$1102(Lcom/sugree/twitter/TwDialog;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/sugree/twitter/TwDialog$TwitterPinCatcher;->this$0:Lcom/sugree/twitter/TwDialog;

    iget-object v1, p0, Lcom/sugree/twitter/TwDialog$TwitterPinCatcher;->this$0:Lcom/sugree/twitter/TwDialog;

    #getter for: Lcom/sugree/twitter/TwDialog;->_foundPin:Ljava/lang/String;
    invoke-static {v1}, Lcom/sugree/twitter/TwDialog;->access$1100(Lcom/sugree/twitter/TwDialog;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/sugree/twitter/TwDialog;->retrieveAccessToken(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sugree/twitter/TwDialog;->access$900(Lcom/sugree/twitter/TwDialog;Ljava/lang/String;)V

    return-void

    :cond_2
    move v2, v1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
