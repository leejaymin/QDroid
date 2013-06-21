.class Lcom/ui/LapseIt/project/TrimView$2;
.super Ljava/lang/Object;
.source "TrimView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/project/TrimView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/project/TrimView;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/project/TrimView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/project/TrimView$2;->this$0:Lcom/ui/LapseIt/project/TrimView;

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/ui/LapseIt/project/TrimView$2;->this$0:Lcom/ui/LapseIt/project/TrimView;

    #calls: Lcom/ui/LapseIt/project/TrimView;->toggleSliderAnimation()V
    invoke-static {v0}, Lcom/ui/LapseIt/project/TrimView;->access$2(Lcom/ui/LapseIt/project/TrimView;)V

    .line 213
    return-void
.end method
