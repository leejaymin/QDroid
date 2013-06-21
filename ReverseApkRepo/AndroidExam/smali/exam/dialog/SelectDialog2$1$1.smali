.class Lexam/dialog/SelectDialog2$1$1;
.super Ljava/lang/Object;
.source "SelectDialog2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/dialog/SelectDialog2$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lexam/dialog/SelectDialog2$1;


# direct methods
.method constructor <init>(Lexam/dialog/SelectDialog2$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/dialog/SelectDialog2$1$1;->this$1:Lexam/dialog/SelectDialog2$1;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 25
    iget-object v0, p0, Lexam/dialog/SelectDialog2$1$1;->this$1:Lexam/dialog/SelectDialog2$1;

    #getter for: Lexam/dialog/SelectDialog2$1;->this$0:Lexam/dialog/SelectDialog2;
    invoke-static {v0}, Lexam/dialog/SelectDialog2$1;->access$0(Lexam/dialog/SelectDialog2$1;)Lexam/dialog/SelectDialog2;

    move-result-object v0

    iput p2, v0, Lexam/dialog/SelectDialog2;->mSelect:I

    .line 26
    return-void
.end method
