.class Lcom/fleapapa/helper/CallUes$4;
.super Ljava/lang/Object;
.source "CallUes.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/CallUes;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/CallUes;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/CallUes;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/CallUes$4;->this$0:Lcom/fleapapa/helper/CallUes;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 120
    iget-object v5, p0, Lcom/fleapapa/helper/CallUes$4;->this$0:Lcom/fleapapa/helper/CallUes;

    iget-object v5, v5, Lcom/fleapapa/helper/CallUes;->call:Lcom/fleapapa/helper/CallPapa$Call;

    sget-object v6, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-object v6, v6, Lcom/fleapapa/helper/CallPapa;->acall:Lcom/fleapapa/helper/CallPapa$Call;

    if-eq v5, v6, :cond_0

    .line 142
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v5, p0, Lcom/fleapapa/helper/CallUes$4;->this$0:Lcom/fleapapa/helper/CallUes;

    iget-object v5, v5, Lcom/fleapapa/helper/CallUes;->call:Lcom/fleapapa/helper/CallPapa$Call;

    invoke-virtual {v5}, Lcom/fleapapa/helper/CallPapa$Call;->recorderState()I

    move-result v5

    if-ne v5, v9, :cond_5

    move v3, v8

    .line 122
    .local v3, speaking:Z
    :goto_1
    iget-object v5, p0, Lcom/fleapapa/helper/CallUes$4;->this$0:Lcom/fleapapa/helper/CallUes;

    iget-object v5, v5, Lcom/fleapapa/helper/CallUes;->call:Lcom/fleapapa/helper/CallPapa$Call;

    invoke-virtual {v5}, Lcom/fleapapa/helper/CallPapa$Call;->playerState()I

    move-result v5

    if-ne v5, v9, :cond_6

    move v2, v8

    .line 124
    .local v2, playing:Z
    :goto_2
    sget v5, Lcom/fleapapa/helper/CallUes;->changedStatus:I

    and-int/lit8 v5, v5, 0xe

    if-eqz v5, :cond_3

    .line 126
    iget-object v5, p0, Lcom/fleapapa/helper/CallUes$4;->this$0:Lcom/fleapapa/helper/CallUes;

    const v6, 0x7f08005a

    invoke-virtual {v5, v6}, Lcom/fleapapa/helper/CallUes;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 127
    .local v0, bar:Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/fleapapa/helper/CallUes$4;->this$0:Lcom/fleapapa/helper/CallUes;

    iget-object v5, v5, Lcom/fleapapa/helper/CallUes;->call:Lcom/fleapapa/helper/CallPapa$Call;

    iget v5, v5, Lcom/fleapapa/helper/CallPapa$Call;->elevel:I

    sget v6, Lcom/fleapapa/util/My;->wwide:I

    mul-int/lit8 v6, v6, 0x4

    mul-int/2addr v5, v6

    div-int/lit16 v4, v5, 0x7fff

    .line 128
    .local v4, w:I
    sget v5, Lcom/fleapapa/util/My;->wwide:I

    if-le v4, v5, :cond_1

    sget v4, Lcom/fleapapa/util/My;->wwide:I

    .line 129
    :cond_1
    if-nez v3, :cond_2

    if-nez v2, :cond_2

    const/4 v4, 0x0

    .line 130
    :cond_2
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 131
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 132
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    .end local v0           #bar:Landroid/widget/ImageView;
    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v4           #w:I
    :cond_3
    sget v5, Lcom/fleapapa/helper/CallUes;->changedStatus:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_4

    .line 136
    iget-object v5, p0, Lcom/fleapapa/helper/CallUes$4;->this$0:Lcom/fleapapa/helper/CallUes;

    iget-boolean v5, v5, Lcom/fleapapa/helper/CallUes;->longClicking:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/fleapapa/helper/CallUes$4;->this$0:Lcom/fleapapa/helper/CallUes;

    iget-object v5, v5, Lcom/fleapapa/helper/CallUes;->call:Lcom/fleapapa/helper/CallPapa$Call;

    invoke-virtual {v5}, Lcom/fleapapa/helper/CallPapa$Call;->startRecorder()V

    .line 139
    :cond_4
    iget-object v5, p0, Lcom/fleapapa/helper/CallUes$4;->this$0:Lcom/fleapapa/helper/CallUes;

    sget-object v6, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-object v6, v6, Lcom/fleapapa/helper/CallPapa;->acall:Lcom/fleapapa/helper/CallPapa$Call;

    iget v6, v6, Lcom/fleapapa/helper/CallPapa$Call;->tstate:I

    invoke-virtual {v5, v6}, Lcom/fleapapa/helper/CallUes;->showPushHelp(I)V

    .line 141
    sput v7, Lcom/fleapapa/helper/CallUes;->changedStatus:I

    goto :goto_0

    .end local v2           #playing:Z
    .end local v3           #speaking:Z
    :cond_5
    move v3, v7

    .line 121
    goto :goto_1

    .restart local v3       #speaking:Z
    :cond_6
    move v2, v7

    .line 122
    goto :goto_2
.end method
