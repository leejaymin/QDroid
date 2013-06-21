.class Lexam/dialog/ErrorMessage2$1$1;
.super Ljava/lang/Object;
.source "ErrorMessage2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/dialog/ErrorMessage2$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lexam/dialog/ErrorMessage2$1;


# direct methods
.method constructor <init>(Lexam/dialog/ErrorMessage2$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/dialog/ErrorMessage2$1$1;->this$1:Lexam/dialog/ErrorMessage2$1;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 31
    iget-object v0, p0, Lexam/dialog/ErrorMessage2$1$1;->this$1:Lexam/dialog/ErrorMessage2$1;

    #getter for: Lexam/dialog/ErrorMessage2$1;->this$0:Lexam/dialog/ErrorMessage2;
    invoke-static {v0}, Lexam/dialog/ErrorMessage2$1;->access$0(Lexam/dialog/ErrorMessage2$1;)Lexam/dialog/ErrorMessage2;

    move-result-object v0

    invoke-virtual {v0}, Lexam/dialog/ErrorMessage2;->finish()V

    .line 32
    return-void
.end method
