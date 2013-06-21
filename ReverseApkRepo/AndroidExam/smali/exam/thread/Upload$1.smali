.class Lexam/thread/Upload$1;
.super Ljava/lang/Object;
.source "Upload.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/thread/Upload;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/thread/Upload;


# direct methods
.method constructor <init>(Lexam/thread/Upload;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/thread/Upload$1;->this$0:Lexam/thread/Upload;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 28
    iget-object v0, p0, Lexam/thread/Upload$1;->this$0:Lexam/thread/Upload;

    invoke-virtual {v0}, Lexam/thread/Upload;->doUpload()V

    .line 29
    return-void
.end method
