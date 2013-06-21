.class Lcom/ui/LapseIt/upload/UploadFormView$3;
.super Ljava/lang/Object;
.source "UploadFormView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/upload/UploadFormView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/upload/UploadFormView;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/upload/UploadFormView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/upload/UploadFormView$3;->this$0:Lcom/ui/LapseIt/upload/UploadFormView;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 249
    iget-object v0, p0, Lcom/ui/LapseIt/upload/UploadFormView$3;->this$0:Lcom/ui/LapseIt/upload/UploadFormView;

    const-string v1, "An error ocurred while signing in, please try again !"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 250
    return-void
.end method
