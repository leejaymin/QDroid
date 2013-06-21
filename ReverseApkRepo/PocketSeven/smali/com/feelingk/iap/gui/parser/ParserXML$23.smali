.class Lcom/feelingk/iap/gui/parser/ParserXML$23;
.super Ljava/lang/Object;
.source "ParserXML.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/feelingk/iap/gui/parser/ParserXML;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 4051
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 4058
    invoke-static {}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$28()Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;->onLguSmsAuthOK()V

    .line 4061
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$27(Ljava/lang/Boolean;)V

    .line 4062
    return-void
.end method
