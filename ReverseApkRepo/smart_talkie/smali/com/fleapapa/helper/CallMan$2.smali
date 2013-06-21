.class Lcom/fleapapa/helper/CallMan$2;
.super Ljava/lang/Object;
.source "CallMan.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/CallMan;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/CallMan;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/CallMan;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/CallMan$2;->this$0:Lcom/fleapapa/helper/CallMan;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 151
    sget v9, Lcom/fleapapa/helper/CallMan;->changedStatus:I

    and-int/lit8 v9, v9, 0x20

    if-eqz v9, :cond_0

    .line 152
    iget-object v9, p0, Lcom/fleapapa/helper/CallMan$2;->this$0:Lcom/fleapapa/helper/CallMan;

    invoke-virtual {v9}, Lcom/fleapapa/helper/CallMan;->layoutCalls()V

    .line 153
    iget-object v9, p0, Lcom/fleapapa/helper/CallMan$2;->this$0:Lcom/fleapapa/helper/CallMan;

    sget-object v10, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-object v10, v10, Lcom/fleapapa/helper/CallPapa;->acall:Lcom/fleapapa/helper/CallPapa$Call;

    invoke-virtual {v9, v10}, Lcom/fleapapa/helper/CallMan;->gotoCall(Lcom/fleapapa/helper/CallPapa$Call;)V

    .line 155
    :cond_0
    sget-object v9, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-object v1, v9, Lcom/fleapapa/helper/CallPapa;->acall:Lcom/fleapapa/helper/CallPapa$Call;

    .line 156
    .local v1, call:Lcom/fleapapa/helper/CallPapa$Call;
    if-nez v1, :cond_1

    .line 216
    .end local p0
    :goto_0
    return-void

    .line 157
    .restart local p0
    :cond_1
    invoke-virtual {v1}, Lcom/fleapapa/helper/CallPapa$Call;->recorderState()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_a

    const/4 v9, 0x1

    move v7, v9

    .line 158
    .local v7, speaking:Z
    :goto_1
    invoke-virtual {v1}, Lcom/fleapapa/helper/CallPapa$Call;->playerState()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_b

    const/4 v9, 0x1

    move v5, v9

    .line 160
    .local v5, playing:Z
    :goto_2
    sget v9, Lcom/fleapapa/helper/CallMan;->changedStatus:I

    and-int/lit8 v9, v9, 0xe

    if-eqz v9, :cond_6

    .line 162
    iget-object v9, p0, Lcom/fleapapa/helper/CallMan$2;->this$0:Lcom/fleapapa/helper/CallMan;

    const v10, 0x7f080070

    invoke-virtual {v9, v10}, Lcom/fleapapa/helper/CallMan;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 163
    .local v0, bar:Landroid/widget/ImageView;
    iget v9, v1, Lcom/fleapapa/helper/CallPapa$Call;->elevel:I

    sget v10, Lcom/fleapapa/util/My;->wwide:I

    mul-int/lit8 v10, v10, 0x4

    mul-int/2addr v9, v10

    div-int/lit16 v8, v9, 0x7fff

    .line 164
    .local v8, w:I
    sget v9, Lcom/fleapapa/util/My;->wwide:I

    if-le v8, v9, :cond_2

    sget v8, Lcom/fleapapa/util/My;->wwide:I

    .line 165
    :cond_2
    if-nez v7, :cond_3

    if-nez v5, :cond_3

    const/4 v8, 0x0

    .line 166
    :cond_3
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 167
    .local v4, lp:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v9, 0x1

    iput v9, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 168
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    sget v9, Lcom/fleapapa/helper/CallMan;->changedStatus:I

    and-int/lit8 v9, v9, 0x6

    if-eqz v9, :cond_5

    .line 171
    if-eqz v7, :cond_c

    iget v9, v1, Lcom/fleapapa/helper/CallPapa$Call;->tstate:I

    const v10, 0x77ff7f00

    if-ne v9, v10, :cond_c

    const/4 v9, 0x1

    move v2, v9

    .line 172
    .local v2, counting:Z
    :goto_3
    iget-object v9, p0, Lcom/fleapapa/helper/CallMan$2;->this$0:Lcom/fleapapa/helper/CallMan;

    const v10, 0x7f080073

    invoke-virtual {v9, v10}, Lcom/fleapapa/helper/CallMan;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-eqz v2, :cond_d

    const/4 v10, 0x0

    :goto_4
    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 173
    iget-object v9, p0, Lcom/fleapapa/helper/CallMan$2;->this$0:Lcom/fleapapa/helper/CallMan;

    const v10, 0x7f080074

    invoke-virtual {v9, v10}, Lcom/fleapapa/helper/CallMan;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-eqz v2, :cond_e

    const/4 v10, 0x0

    :goto_5
    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 175
    if-eqz v2, :cond_5

    .line 176
    sget-object v9, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget v9, v9, Lcom/fleapapa/helper/CallPapa;->maxTalkSecs:I

    mul-int/lit16 v9, v9, 0x3e8

    int-to-long v9, v9

    iget-object v11, v1, Lcom/fleapapa/helper/CallPapa$Call;->lburst:Lcom/fleapapa/helper/CallPapa$Burst;

    invoke-virtual {v11}, Lcom/fleapapa/helper/CallPapa$Burst;->duration()J

    move-result-wide v11

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    long-to-int v6, v9

    .line 177
    .local v6, secLeft:I
    iget-object v9, p0, Lcom/fleapapa/helper/CallMan$2;->this$0:Lcom/fleapapa/helper/CallMan;

    iget v9, v9, Lcom/fleapapa/helper/CallMan;->osec:I

    if-eq v6, v9, :cond_4

    .line 178
    iget-object v9, p0, Lcom/fleapapa/helper/CallMan$2;->this$0:Lcom/fleapapa/helper/CallMan;

    const v10, 0x7f080074

    invoke-virtual {v9, v10}, Lcom/fleapapa/helper/CallMan;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #bar:Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/TextView;

    const-string v9, "%d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    :cond_4
    iget-object v9, p0, Lcom/fleapapa/helper/CallMan$2;->this$0:Lcom/fleapapa/helper/CallMan;

    iput v6, v9, Lcom/fleapapa/helper/CallMan;->osec:I

    .line 183
    .end local v2           #counting:Z
    .end local v6           #secLeft:I
    :cond_5
    sget v9, Lcom/fleapapa/helper/CallMan;->changedStatus:I

    and-int/lit8 v9, v9, 0xc

    if-eqz v9, :cond_6

    .line 184
    iget-object v9, p0, Lcom/fleapapa/helper/CallMan$2;->this$0:Lcom/fleapapa/helper/CallMan;

    iget-object v9, v9, Lcom/fleapapa/helper/CallMan;->vstop:Landroid/widget/ImageView;

    if-nez v9, :cond_6

    .line 185
    or-int v9, v5, v7

    if-eqz v9, :cond_f

    .line 186
    iget-object v9, p0, Lcom/fleapapa/helper/CallMan$2;->this$0:Lcom/fleapapa/helper/CallMan;

    iget-object v9, v9, Lcom/fleapapa/helper/CallMan;->bview:Landroid/widget/ListView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setVisibility(I)V

    .line 187
    iget-object v9, p0, Lcom/fleapapa/helper/CallMan$2;->this$0:Lcom/fleapapa/helper/CallMan;

    iget-object v9, v9, Lcom/fleapapa/helper/CallMan;->mview:Lcom/google/android/maps/MapView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/google/android/maps/MapView;->setVisibility(I)V

    .line 195
    .end local v4           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v8           #w:I
    :cond_6
    :goto_6
    if-nez v5, :cond_7

    .line 196
    iget-object v9, p0, Lcom/fleapapa/helper/CallMan$2;->this$0:Lcom/fleapapa/helper/CallMan;

    iget-object v9, v9, Lcom/fleapapa/helper/CallMan;->vstop:Landroid/widget/ImageView;

    if-eqz v9, :cond_7

    .line 197
    iget-object v9, p0, Lcom/fleapapa/helper/CallMan$2;->this$0:Lcom/fleapapa/helper/CallMan;

    iget-object v9, v9, Lcom/fleapapa/helper/CallMan;->vstop:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 198
    iget-object v9, p0, Lcom/fleapapa/helper/CallMan$2;->this$0:Lcom/fleapapa/helper/CallMan;

    const/4 v10, 0x0

    iput-object v10, v9, Lcom/fleapapa/helper/CallMan;->vstop:Landroid/widget/ImageView;

    .line 201
    :cond_7
    sget v9, Lcom/fleapapa/helper/CallMan;->changedStatus:I

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_8

    .line 202
    iget v9, v1, Lcom/fleapapa/helper/CallPapa$Call;->tstate:I

    const v10, 0x7700af00

    if-ne v9, v10, :cond_8

    .line 203
    iget-object v9, p0, Lcom/fleapapa/helper/CallMan$2;->this$0:Lcom/fleapapa/helper/CallMan;

    const/4 v10, 0x5

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Lcom/fleapapa/helper/CallMan;->addBursts(IZ)V

    .line 205
    :cond_8
    sget v9, Lcom/fleapapa/helper/CallMan;->changedStatus:I

    and-int/lit8 v9, v9, 0x10

    if-eqz v9, :cond_9

    .line 206
    iget-object v9, p0, Lcom/fleapapa/helper/CallMan$2;->this$0:Lcom/fleapapa/helper/CallMan;

    invoke-virtual {v9, v1}, Lcom/fleapapa/helper/CallMan;->showPeers(Lcom/fleapapa/helper/CallPapa$Call;)V

    .line 208
    iget-object v3, v1, Lcom/fleapapa/helper/CallPapa$Call;->eue:Lcom/fleapapa/helper/CallPapa$UE;

    .line 209
    .local v3, eue:Lcom/fleapapa/helper/CallPapa$UE;
    if-eqz v3, :cond_9

    .line 210
    sget-object v9, Lcom/fleapapa/util/My;->context:Landroid/content/Context;

    sget-object v10, Lcom/fleapapa/util/My;->context:Landroid/content/Context;

    iget-object v11, v1, Lcom/fleapapa/helper/CallPapa$Call;->ons:Landroid/util/SparseBooleanArray;

    iget v12, v3, Lcom/fleapapa/helper/CallPapa$UE;->uid:I

    invoke-virtual {v11, v12}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v11

    if-eqz v11, :cond_10

    const v11, 0x7f0600e2

    :goto_7
    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, v3, Lcom/fleapapa/helper/CallPapa$UE;->user:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget-object v13, v3, Lcom/fleapapa/helper/CallPapa$UE;->name:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/fleapapa/util/MyNotify;->notify(Landroid/content/Context;Ljava/lang/String;)V

    .line 213
    .end local v3           #eue:Lcom/fleapapa/helper/CallPapa$UE;
    :cond_9
    iget-object v9, p0, Lcom/fleapapa/helper/CallMan$2;->this$0:Lcom/fleapapa/helper/CallMan;

    iget-object v10, p0, Lcom/fleapapa/helper/CallMan$2;->this$0:Lcom/fleapapa/helper/CallMan;

    const v11, 0x7f080078

    invoke-virtual {v10, v11}, Lcom/fleapapa/helper/CallMan;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/Button;

    invoke-virtual {v9, p0}, Lcom/fleapapa/helper/CallMan;->showPushButton(Landroid/widget/Button;)V

    .line 215
    const/4 v9, 0x0

    sput v9, Lcom/fleapapa/helper/CallMan;->changedStatus:I

    goto/16 :goto_0

    .line 157
    .end local v5           #playing:Z
    .end local v7           #speaking:Z
    .restart local p0
    :cond_a
    const/4 v9, 0x0

    move v7, v9

    goto/16 :goto_1

    .line 158
    .restart local v7       #speaking:Z
    :cond_b
    const/4 v9, 0x0

    move v5, v9

    goto/16 :goto_2

    .line 171
    .restart local v0       #bar:Landroid/widget/ImageView;
    .restart local v4       #lp:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v5       #playing:Z
    .restart local v8       #w:I
    :cond_c
    const/4 v9, 0x0

    move v2, v9

    goto/16 :goto_3

    .line 172
    .restart local v2       #counting:Z
    :cond_d
    const/4 v10, 0x4

    goto/16 :goto_4

    .line 173
    :cond_e
    const/4 v10, 0x4

    goto/16 :goto_5

    .line 190
    .end local v0           #bar:Landroid/widget/ImageView;
    .end local v2           #counting:Z
    :cond_f
    iget-object v9, p0, Lcom/fleapapa/helper/CallMan$2;->this$0:Lcom/fleapapa/helper/CallMan;

    iget-object v9, v9, Lcom/fleapapa/helper/CallMan;->bview:Landroid/widget/ListView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setVisibility(I)V

    .line 191
    iget-object v9, p0, Lcom/fleapapa/helper/CallMan$2;->this$0:Lcom/fleapapa/helper/CallMan;

    iget-object v9, v9, Lcom/fleapapa/helper/CallMan;->mview:Lcom/google/android/maps/MapView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/google/android/maps/MapView;->setVisibility(I)V

    goto/16 :goto_6

    .line 210
    .end local v4           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v8           #w:I
    .restart local v3       #eue:Lcom/fleapapa/helper/CallPapa$UE;
    :cond_10
    const v11, 0x7f0600e3

    goto :goto_7
.end method
