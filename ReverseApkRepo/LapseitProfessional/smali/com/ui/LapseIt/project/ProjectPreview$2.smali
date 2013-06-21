.class Lcom/ui/LapseIt/project/ProjectPreview$2;
.super Ljava/lang/Object;
.source "ProjectPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/project/ProjectPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 213
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 215
    invoke-static {}, Lcom/ui/LapseIt/project/ProjectPreview;->access$0()Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {}, Lcom/ui/LapseIt/project/ProjectPreview;->access$1()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 216
    return-void
.end method
