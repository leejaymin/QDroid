.class Lcom/ui/LapseIt/upload/UploadLoginView$7$2$1;
.super Ljava/lang/Object;
.source "UploadLoginView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/upload/UploadLoginView$7$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ui/LapseIt/upload/UploadLoginView$7$2;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/upload/UploadLoginView$7$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/upload/UploadLoginView$7$2$1;->this$2:Lcom/ui/LapseIt/upload/UploadLoginView$7$2;

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 405
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 406
    return-void
.end method
