.class Lcom/ui/LapseIt/project/InfoView$1;
.super Ljava/lang/Object;
.source "InfoView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/project/InfoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/project/InfoView;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/project/InfoView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/project/InfoView$1;->this$0:Lcom/ui/LapseIt/project/InfoView;

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 252
    packed-switch p2, :pswitch_data_0

    .line 261
    :goto_0
    return-void

    .line 254
    :pswitch_0
    iget-object v0, p0, Lcom/ui/LapseIt/project/InfoView$1;->this$0:Lcom/ui/LapseIt/project/InfoView;

    iget v0, v0, Lcom/ui/LapseIt/project/InfoView;->frameRate:I

    invoke-static {v0}, Lcom/ui/LapseIt/project/ProjectPreview;->setFrameRate(I)V

    goto :goto_0

    .line 252
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
