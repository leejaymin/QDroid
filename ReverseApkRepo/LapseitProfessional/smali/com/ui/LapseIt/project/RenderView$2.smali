.class Lcom/ui/LapseIt/project/RenderView$2;
.super Ljava/lang/Object;
.source "RenderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/project/RenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/project/RenderView;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/project/RenderView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/project/RenderView$2;->this$0:Lcom/ui/LapseIt/project/RenderView;

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 308
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ui/LapseIt/project/RenderView$2;->this$0:Lcom/ui/LapseIt/project/RenderView;

    const-class v2, Lcom/ui/LapseIt/settings/SettingsView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 309
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/ui/LapseIt/project/RenderView$2;->this$0:Lcom/ui/LapseIt/project/RenderView;

    invoke-virtual {v1, v0}, Lcom/ui/LapseIt/project/RenderView;->startActivity(Landroid/content/Intent;)V

    .line 310
    return-void
.end method
