.class Lcom/nix/apps/androlib/wallpapers/MainWall$6;
.super Ljava/lang/Object;
.source "MainWall.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nix/apps/androlib/wallpapers/MainWall;->paramWallpapersListInc()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;


# direct methods
.method constructor <init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$6;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    const v3, 0x7f06001e

    .line 305
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$6;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    invoke-virtual {v1, v3}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 306
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$6;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    invoke-virtual {v1, v3}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 307
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$6;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/nix/apps/androlib/wallpapers/MainWall;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 308
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$6;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    const v2, 0x7f06001f

    invoke-virtual {v1, v2}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 309
    return-void
.end method
