.class Lelectrum2/drums/electrum$13;
.super Ljava/lang/Object;
.source "electrum.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelectrum2/drums/electrum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lelectrum2/drums/electrum;


# direct methods
.method constructor <init>(Lelectrum2/drums/electrum;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lelectrum2/drums/electrum$13;->this$0:Lelectrum2/drums/electrum;

    .line 2160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "v"
    .parameter "me"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2165
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    move-object v1, p1

    .line 2168
    check-cast v1, Landroid/widget/ImageView;

    .line 2170
    .local v1, tempview:Landroid/widget/ImageView;
    iget-object v2, p0, Lelectrum2/drums/electrum$13;->this$0:Lelectrum2/drums/electrum;

    iput-boolean v3, v2, Lelectrum2/drums/electrum;->wasLongPressed:Z

    .line 2171
    iget-object v2, p0, Lelectrum2/drums/electrum$13;->this$0:Lelectrum2/drums/electrum;

    iput-boolean v3, v2, Lelectrum2/drums/electrum;->wasMuted:Z

    .line 2174
    iget-object v2, p0, Lelectrum2/drums/electrum$13;->this$0:Lelectrum2/drums/electrum;

    iput-object v1, v2, Lelectrum2/drums/electrum;->soundView:Landroid/widget/ImageView;

    .line 2176
    iget-object v2, p0, Lelectrum2/drums/electrum$13;->this$0:Lelectrum2/drums/electrum;

    iget-object v2, v2, Lelectrum2/drums/electrum;->soundslot1:Landroid/widget/ImageView;

    if-ne v1, v2, :cond_3

    .line 2178
    iget-object v2, p0, Lelectrum2/drums/electrum$13;->this$0:Lelectrum2/drums/electrum;

    #calls: Lelectrum2/drums/electrum;->SetSelectedSound(I)V
    invoke-static {v2, v4}, Lelectrum2/drums/electrum;->access$0(Lelectrum2/drums/electrum;I)V

    .line 2179
    iget-object v2, p0, Lelectrum2/drums/electrum$13;->this$0:Lelectrum2/drums/electrum;

    iput v4, v2, Lelectrum2/drums/electrum;->soundid:I

    .line 2224
    :cond_0
    :goto_0
    sget-boolean v2, Lelectrum2/drums/globalSounds;->IsPlaying:Z

    if-nez v2, :cond_1

    .line 2228
    :try_start_0
    sget-boolean v2, Lelectrum2/drums/globalSounds;->playpadwhenhit:Z

    if-eqz v2, :cond_1

    .line 2237
    iget-object v2, p0, Lelectrum2/drums/electrum$13;->this$0:Lelectrum2/drums/electrum;

    #calls: Lelectrum2/drums/electrum;->stopCurrentPadTrack()V
    invoke-static {v2}, Lelectrum2/drums/electrum;->access$3(Lelectrum2/drums/electrum;)V

    .line 2238
    iget-object v2, p0, Lelectrum2/drums/electrum$13;->this$0:Lelectrum2/drums/electrum;

    #calls: Lelectrum2/drums/electrum;->playCurrentPadTrack()V
    invoke-static {v2}, Lelectrum2/drums/electrum;->access$4(Lelectrum2/drums/electrum;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2297
    .end local v1           #tempview:Landroid/widget/ImageView;
    :cond_1
    :goto_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 2304
    iget-object v2, p0, Lelectrum2/drums/electrum$13;->this$0:Lelectrum2/drums/electrum;

    iget-boolean v2, v2, Lelectrum2/drums/electrum;->wasLongPressed:Z

    if-eqz v2, :cond_2

    .line 2317
    iget-object v2, p0, Lelectrum2/drums/electrum$13;->this$0:Lelectrum2/drums/electrum;

    #calls: Lelectrum2/drums/electrum;->stopAllPadTracks()V
    invoke-static {v2}, Lelectrum2/drums/electrum;->access$5(Lelectrum2/drums/electrum;)V

    .line 2320
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lelectrum2/drums/electrum$13;->this$0:Lelectrum2/drums/electrum;

    const-class v3, Lelectrum2/drums/drumsettings;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2322
    .local v0, i:Landroid/content/Intent;
    sput-boolean v4, Lelectrum2/drums/globalSounds;->IsOwnActivity:Z

    .line 2324
    iget-object v2, p0, Lelectrum2/drums/electrum$13;->this$0:Lelectrum2/drums/electrum;

    const/16 v3, 0x1e

    invoke-virtual {v2, v0, v3}, Lelectrum2/drums/electrum;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2333
    .end local v0           #i:Landroid/content/Intent;
    :cond_2
    iget-object v2, p0, Lelectrum2/drums/electrum$13;->this$0:Lelectrum2/drums/electrum;

    iget-object v3, p0, Lelectrum2/drums/electrum$13;->this$0:Lelectrum2/drums/electrum;

    iget v3, v3, Lelectrum2/drums/electrum;->soundid:I

    invoke-virtual {v2, v3}, Lelectrum2/drums/electrum;->DisplaySelectedSound(I)V

    .line 2336
    iget-object v2, p0, Lelectrum2/drums/electrum$13;->this$0:Lelectrum2/drums/electrum;

    #getter for: Lelectrum2/drums/electrum;->gestureScanner:Landroid/view/GestureDetector;
    invoke-static {v2}, Lelectrum2/drums/electrum;->access$6(Lelectrum2/drums/electrum;)Landroid/view/GestureDetector;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2338
    return v4

    .line 2181
    .restart local v1       #tempview:Landroid/widget/ImageView;
    :cond_3
    iget-object v2, p0, Lelectrum2/drums/electrum$13;->this$0:Lelectrum2/drums/electrum;

    iget-object v2, v2, Lelectrum2/drums/electrum;->soundslot2:Landroid/widget/ImageView;

    if-ne v1, v2, :cond_4

    .line 2183
    iget-object v2, p0, Lelectrum2/drums/electrum$13;->this$0:Lelectrum2/drums/electrum;

    #calls: Lelectrum2/drums/electrum;->SetSelectedSound(I)V
    invoke-static {v2, v5}, Lelectrum2/drums/electrum;->access$0(Lelectrum2/drums/electrum;I)V

    .line 2184
    iget-object v2, p0, Lelectrum2/drums/electrum$13;->this$0:Lelectrum2/drums/electrum;

    iput v5, v2, Lelectrum2/drums/electrum;->soundid:I

    goto :goto_0

    .line 2186
    :cond_4
    iget-object v2, p0, Lelectrum2/drums/electrum$13;->this$0:Lelectrum2/drums/electrum;

    iget-object v2, v2, Lelectrum2/drums/electrum;->soundslot3:Landroid/widget/ImageView;

    if-ne v1, v2, :cond_5

    .line 2188
    iget-object v2, p0, Lelectrum2/drums/electrum$13;->this$0:Lelectrum2/drums/electrum;

    #calls: Lelectrum2/drums/electrum;->SetSelectedSound(I)V
    invoke-static {v2, v6}, Lelectrum2/drums/electrum;->access$0(Lelectrum2/drums/electrum;I)V

    .line 2189
    iget-object v2, p0, Lelectrum2/drums/electrum$13;->this$0:Lelectrum2/drums/electrum;

    iput v6, v2, Lelectrum2/drums/electrum;->soundid:I

    goto :goto_0

    .line 2191
    :cond_5
    iget-object v2, p0, Lelectrum2/drums/electrum$13;->this$0:Lelectrum2/drums/electrum;

    iget-object v2, v2, Lelectrum2/drums/electrum;->soundslot4:Landroid/widget/ImageView;

    if-ne v1, v2, :cond_6

    .line 2193
    iget-object v2, p0, Lelectrum2/drums/electrum$13;->this$0:Lelectrum2/drums/electrum;

    #calls: Lelectrum2/drums/electrum;->SetSelectedSound(I)V
    invoke-static {v2, v7}, Lelectrum2/drums/electrum;->access$0(Lelectrum2/drums/electrum;I)V

    .line 2194
    iget-object v2, p0, Lelectrum2/drums/electrum$13;->this$0:Lelectrum2/drums/electrum;

    iput v7, v2, Lelectrum2/drums/electrum;->soundid:I

    goto :goto_0

    .line 2197
    :cond_6
    iget-object v2, p0, Lelectrum2/drums/electrum$13;->this$0:Lelectrum2/drums/electrum;

    iget-object v2, v2, Lelectrum2/drums/electrum;->soundslot5:Landroid/widget/ImageView;

    if-ne v1, v2, :cond_7

    .line 2199
    iget-object v2, p0, Lelectrum2/drums/electrum$13;->this$0:Lelectrum2/drums/electrum;

    const/4 v3, 0x5

    #calls: Lelectrum2/drums/electrum;->SetSelectedSound(I)V
    invoke-static {v2, v3}, Lelectrum2/drums/electrum;->access$0(Lelectrum2/drums/electrum;I)V

    .line 2200
    iget-object v2, p0, Lelectrum2/drums/electrum$13;->this$0:Lelectrum2/drums/electrum;

    const/4 v3, 0x5

    iput v3, v2, Lelectrum2/drums/electrum;->soundid:I

    goto/16 :goto_0

    .line 2203
    :cond_7
    iget-object v2, p0, Lelectrum2/drums/electrum$13;->this$0:Lelectrum2/drums/electrum;

    iget-object v2, v2, Lelectrum2/drums/electrum;->soundslot6:Landroid/widget/ImageView;

    if-ne v1, v2, :cond_8

    .line 2205
    iget-object v2, p0, Lelectrum2/drums/electrum$13;->this$0:Lelectrum2/drums/electrum;

    const/4 v3, 0x6

    #calls: Lelectrum2/drums/electrum;->SetSelectedSound(I)V
    invoke-static {v2, v3}, Lelectrum2/drums/electrum;->access$0(Lelectrum2/drums/electrum;I)V

    .line 2206
    iget-object v2, p0, Lelectrum2/drums/electrum$13;->this$0:Lelectrum2/drums/electrum;

    const/4 v3, 0x6

    iput v3, v2, Lelectrum2/drums/electrum;->soundid:I

    goto/16 :goto_0

    .line 2209
    :cond_8
    iget-object v2, p0, Lelectrum2/drums/electrum$13;->this$0:Lelectrum2/drums/electrum;

    iget-object v2, v2, Lelectrum2/drums/electrum;->soundslot7:Landroid/widget/ImageView;

    if-ne v1, v2, :cond_9

    .line 2211
    iget-object v2, p0, Lelectrum2/drums/electrum$13;->this$0:Lelectrum2/drums/electrum;

    const/4 v3, 0x7

    #calls: Lelectrum2/drums/electrum;->SetSelectedSound(I)V
    invoke-static {v2, v3}, Lelectrum2/drums/electrum;->access$0(Lelectrum2/drums/electrum;I)V

    .line 2212
    iget-object v2, p0, Lelectrum2/drums/electrum$13;->this$0:Lelectrum2/drums/electrum;

    const/4 v3, 0x7

    iput v3, v2, Lelectrum2/drums/electrum;->soundid:I

    goto/16 :goto_0

    .line 2215
    :cond_9
    iget-object v2, p0, Lelectrum2/drums/electrum$13;->this$0:Lelectrum2/drums/electrum;

    iget-object v2, v2, Lelectrum2/drums/electrum;->soundslot8:Landroid/widget/ImageView;

    if-ne v1, v2, :cond_0

    .line 2217
    iget-object v2, p0, Lelectrum2/drums/electrum$13;->this$0:Lelectrum2/drums/electrum;

    const/16 v3, 0x8

    #calls: Lelectrum2/drums/electrum;->SetSelectedSound(I)V
    invoke-static {v2, v3}, Lelectrum2/drums/electrum;->access$0(Lelectrum2/drums/electrum;I)V

    .line 2218
    iget-object v2, p0, Lelectrum2/drums/electrum$13;->this$0:Lelectrum2/drums/electrum;

    const/16 v3, 0x8

    iput v3, v2, Lelectrum2/drums/electrum;->soundid:I

    goto/16 :goto_0

    .line 2258
    :catch_0
    move-exception v2

    goto/16 :goto_1
.end method
