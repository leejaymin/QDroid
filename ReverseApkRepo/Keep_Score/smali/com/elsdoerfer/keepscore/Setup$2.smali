.class Lcom/elsdoerfer/keepscore/Setup$2;
.super Ljava/lang/Object;
.source "Setup.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elsdoerfer/keepscore/Setup;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elsdoerfer/keepscore/Setup;


# direct methods
.method constructor <init>(Lcom/elsdoerfer/keepscore/Setup;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/elsdoerfer/keepscore/Setup$2;->this$0:Lcom/elsdoerfer/keepscore/Setup;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 162
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/elsdoerfer/keepscore/Setup$2;->this$0:Lcom/elsdoerfer/keepscore/Setup;

    #calls: Lcom/elsdoerfer/keepscore/Setup;->newPlayerNameSubmit()V
    invoke-static {v0}, Lcom/elsdoerfer/keepscore/Setup;->access$0(Lcom/elsdoerfer/keepscore/Setup;)V

    .line 171
    const/4 v0, 0x1

    .line 173
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
