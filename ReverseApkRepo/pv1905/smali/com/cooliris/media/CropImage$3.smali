.class Lcom/cooliris/media/CropImage$3;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/CropImage;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/CropImage;


# direct methods
.method constructor <init>(Lcom/cooliris/media/CropImage;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cooliris/media/CropImage$3;->this$0:Lcom/cooliris/media/CropImage;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/cooliris/media/CropImage$3;->this$0:Lcom/cooliris/media/CropImage;

    #calls: Lcom/cooliris/media/CropImage;->onSaveClicked()V
    invoke-static {v0}, Lcom/cooliris/media/CropImage;->access$7(Lcom/cooliris/media/CropImage;)V

    .line 139
    return-void
.end method
