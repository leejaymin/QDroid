.class Lcom/wolfram/android/alpha/activity/WolframAlpha$4;
.super Ljava/lang/Object;
.source "WolframAlpha.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wolfram/android/alpha/activity/WolframAlpha;->doQuery(Lcom/wolfram/alpha/WAQuery;Lcom/wolfram/android/alpha/PodStateButtonData;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wolfram/android/alpha/activity/WolframAlpha;


# direct methods
.method constructor <init>(Lcom/wolfram/android/alpha/activity/WolframAlpha;)V
    .locals 0
    .parameter

    .prologue
    .line 1642
    iput-object p1, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$4;->this$0:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1644
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1645
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$4;->this$0:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    #getter for: Lcom/wolfram/android/alpha/activity/WolframAlpha;->imageMap_ButtonData:Lcom/wolfram/android/alpha/ImageMap_ButtonData;
    invoke-static {v0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->access$1500(Lcom/wolfram/android/alpha/activity/WolframAlpha;)Lcom/wolfram/android/alpha/ImageMap_ButtonData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1646
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$4;->this$0:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    #getter for: Lcom/wolfram/android/alpha/activity/WolframAlpha;->imageMap_ButtonData:Lcom/wolfram/android/alpha/ImageMap_ButtonData;
    invoke-static {v0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->access$1500(Lcom/wolfram/android/alpha/activity/WolframAlpha;)Lcom/wolfram/android/alpha/ImageMap_ButtonData;

    move-result-object v0

    iget-object v0, v0, Lcom/wolfram/android/alpha/ImageMap_ButtonData;->imagemap_bottom_line:Landroid/widget/ImageView;

    const v1, 0x7f0a0038

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 1647
    :cond_0
    return-void
.end method
