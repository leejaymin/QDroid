.class public Lcom/fleapapa/helper/CallUes;
.super Landroid/app/Activity;
.source "CallUes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fleapapa/helper/CallUes$BuddyAdapter;
    }
.end annotation


# static fields
.field static changedStatus:I

.field static handler:Landroid/os/Handler;

.field static refreshUI:Ljava/lang/Runnable;

.field static runner_eof:Ljava/lang/Runnable;

.field static runner_found:Ljava/lang/Runnable;

.field static ues:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/fleapapa/helper/CallPapa$UE;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final LMODE_GROUP_UES:I

.field private final LMODE_SEARCHED_UES:I

.field private final WHO:Ljava/lang/String;

.field badapter:Lcom/fleapapa/helper/CallUes$BuddyAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fleapapa/helper/CallUes$BuddyAdapter",
            "<",
            "Lcom/fleapapa/helper/CallPapa$UE;",
            ">;"
        }
    .end annotation
.end field

.field bdirty:Z

.field blview:Landroid/widget/ListView;

.field call:Lcom/fleapapa/helper/CallPapa$Call;

.field cgrp:Lcom/fleapapa/helper/Group;

.field cid:I

.field lmode:I

.field longClicking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/fleapapa/helper/CallUes;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fleapapa/helper/CallUes;->WHO:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/fleapapa/helper/CallUes;->LMODE_GROUP_UES:I

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lcom/fleapapa/helper/CallUes;->LMODE_SEARCHED_UES:I

    .line 38
    return-void
.end method

.method static synthetic access$0(Lcom/fleapapa/helper/CallUes;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/fleapapa/helper/CallUes;->WHO:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method findUEs(Ljava/lang/String;Z)V
    .locals 5
    .parameter "name"
    .parameter "urgency"

    .prologue
    const/4 v4, 0x1

    .line 303
    iput v4, p0, Lcom/fleapapa/helper/CallUes;->lmode:I

    .line 305
    iget-object v0, p0, Lcom/fleapapa/helper/CallUes;->badapter:Lcom/fleapapa/helper/CallUes$BuddyAdapter;

    invoke-virtual {v0}, Lcom/fleapapa/helper/CallUes$BuddyAdapter;->clear()V

    .line 306
    sget-object v0, Lcom/fleapapa/helper/CallUes;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 308
    sget-object v0, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    invoke-virtual {v0, p1, p2}, Lcom/fleapapa/helper/CallPapa;->findUEs(Ljava/lang/String;Z)V

    .line 310
    sget-object v0, Lcom/fleapapa/helper/CallUes;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/fleapapa/helper/CallUes;->runner_eof:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 311
    invoke-static {p0, v4}, Lcom/fleapapa/util/MyUtil;->progress(Landroid/app/Activity;Z)V

    .line 312
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const v7, 0x7f08005f

    const v6, 0x7f08005e

    const v5, 0x7f080058

    .line 56
    sget-object v2, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/fleapapa/helper/CallUes;->WHO:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".onCreate"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-static {p0}, Lcom/fleapapa/util/My;->getScreenDimension(Landroid/app/Activity;)V

    .line 59
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/CallUes;->requestWindowFeature(I)Z

    .line 60
    const v2, 0x7f03000d

    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/CallUes;->setContentView(I)V

    .line 62
    invoke-virtual {p0}, Lcom/fleapapa/helper/CallUes;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 63
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "cid"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/fleapapa/helper/CallUes;->cid:I

    .line 64
    iget v2, p0, Lcom/fleapapa/helper/CallUes;->cid:I

    if-eqz v2, :cond_2

    sget-object v2, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-object v2, v2, Lcom/fleapapa/helper/CallPapa;->calls:Ljava/util/concurrent/ConcurrentHashMap;

    iget v3, p0, Lcom/fleapapa/helper/CallUes;->cid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fleapapa/helper/CallPapa$Call;

    :goto_0
    iput-object v2, p0, Lcom/fleapapa/helper/CallUes;->call:Lcom/fleapapa/helper/CallPapa$Call;

    .line 65
    const-string v2, "group"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, grpname:Ljava/lang/String;
    sget-object v2, Lcom/fleapapa/helper/CallGrps;->groups:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fleapapa/helper/Group;

    iput-object v2, p0, Lcom/fleapapa/helper/CallUes;->cgrp:Lcom/fleapapa/helper/Group;

    .line 67
    iget-object v2, p0, Lcom/fleapapa/helper/CallUes;->cgrp:Lcom/fleapapa/helper/Group;

    if-nez v2, :cond_0

    sget-object v2, Lcom/fleapapa/util/My;->buddies:Lcom/fleapapa/helper/Group;

    iput-object v2, p0, Lcom/fleapapa/helper/CallUes;->cgrp:Lcom/fleapapa/helper/Group;

    .line 69
    :cond_0
    const v2, 0x7f08005c

    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/CallUes;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/fleapapa/helper/CallUes;->blview:Landroid/widget/ListView;

    .line 70
    iget-object v2, p0, Lcom/fleapapa/helper/CallUes;->blview:Landroid/widget/ListView;

    new-instance v3, Lcom/fleapapa/helper/CallUes$BuddyAdapter;

    invoke-direct {v3, p0}, Lcom/fleapapa/helper/CallUes$BuddyAdapter;-><init>(Lcom/fleapapa/helper/CallUes;)V

    iput-object v3, p0, Lcom/fleapapa/helper/CallUes;->badapter:Lcom/fleapapa/helper/CallUes$BuddyAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 72
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    sput-object v2, Lcom/fleapapa/helper/CallUes;->handler:Landroid/os/Handler;

    .line 73
    new-instance v2, Lcom/fleapapa/helper/CallUes$1;

    invoke-direct {v2, p0}, Lcom/fleapapa/helper/CallUes$1;-><init>(Lcom/fleapapa/helper/CallUes;)V

    sput-object v2, Lcom/fleapapa/helper/CallUes;->runner_found:Ljava/lang/Runnable;

    .line 78
    new-instance v2, Lcom/fleapapa/helper/CallUes$2;

    invoke-direct {v2, p0}, Lcom/fleapapa/helper/CallUes$2;-><init>(Lcom/fleapapa/helper/CallUes;)V

    sput-object v2, Lcom/fleapapa/helper/CallUes;->runner_eof:Ljava/lang/Runnable;

    .line 100
    iget-object v2, p0, Lcom/fleapapa/helper/CallUes;->blview:Landroid/widget/ListView;

    new-instance v3, Lcom/fleapapa/helper/CallUes$3;

    invoke-direct {v3, p0}, Lcom/fleapapa/helper/CallUes$3;-><init>(Lcom/fleapapa/helper/CallUes;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 118
    new-instance v2, Lcom/fleapapa/helper/CallUes$4;

    invoke-direct {v2, p0}, Lcom/fleapapa/helper/CallUes$4;-><init>(Lcom/fleapapa/helper/CallUes;)V

    sput-object v2, Lcom/fleapapa/helper/CallUes;->refreshUI:Ljava/lang/Runnable;

    .line 144
    iget-object v2, p0, Lcom/fleapapa/helper/CallUes;->blview:Landroid/widget/ListView;

    new-instance v3, Lcom/fleapapa/helper/CallUes$5;

    invoke-direct {v3, p0}, Lcom/fleapapa/helper/CallUes$5;-><init>(Lcom/fleapapa/helper/CallUes;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 186
    iget-object v2, p0, Lcom/fleapapa/helper/CallUes;->blview:Landroid/widget/ListView;

    new-instance v3, Lcom/fleapapa/helper/CallUes$6;

    invoke-direct {v3, p0}, Lcom/fleapapa/helper/CallUes$6;-><init>(Lcom/fleapapa/helper/CallUes;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 199
    const v2, 0x7f080057

    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/CallUes;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    new-instance v3, Lcom/fleapapa/helper/CallUes$7;

    invoke-direct {v3, p0}, Lcom/fleapapa/helper/CallUes$7;-><init>(Lcom/fleapapa/helper/CallUes;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 213
    invoke-virtual {p0, v5}, Lcom/fleapapa/helper/CallUes;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/fleapapa/util/MyImageButton;

    const v3, 0x7f0600eb

    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/CallUes;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/fleapapa/util/MyImageButton;->text:Ljava/lang/String;

    .line 214
    invoke-virtual {p0, v5}, Lcom/fleapapa/helper/CallUes;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/fleapapa/util/MyImageButton;

    new-instance v3, Lcom/fleapapa/helper/CallUes$8;

    invoke-direct {v3, p0}, Lcom/fleapapa/helper/CallUes$8;-><init>(Lcom/fleapapa/helper/CallUes;)V

    invoke-virtual {v2, v3}, Lcom/fleapapa/util/MyImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v2, p0, Lcom/fleapapa/helper/CallUes;->call:Lcom/fleapapa/helper/CallPapa$Call;

    if-nez v2, :cond_1

    .line 230
    const v2, 0x7f08005d

    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/CallUes;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 231
    :cond_1
    invoke-virtual {p0, v6}, Lcom/fleapapa/helper/CallUes;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/fleapapa/util/MyImageButton;

    const v3, 0x7f06001b

    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/CallUes;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/fleapapa/util/MyImageButton;->text:Ljava/lang/String;

    .line 232
    invoke-virtual {p0, v6}, Lcom/fleapapa/helper/CallUes;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/fleapapa/util/MyImageButton;

    new-instance v3, Lcom/fleapapa/helper/CallUes$9;

    invoke-direct {v3, p0}, Lcom/fleapapa/helper/CallUes$9;-><init>(Lcom/fleapapa/helper/CallUes;)V

    invoke-virtual {v2, v3}, Lcom/fleapapa/util/MyImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    invoke-virtual {p0, v7}, Lcom/fleapapa/helper/CallUes;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/fleapapa/util/MyImageButton;

    const v3, 0x7f06001f

    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/CallUes;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/fleapapa/util/MyImageButton;->text:Ljava/lang/String;

    .line 260
    invoke-virtual {p0, v7}, Lcom/fleapapa/helper/CallUes;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/fleapapa/util/MyImageButton;

    new-instance v3, Lcom/fleapapa/helper/CallUes$10;

    invoke-direct {v3, p0}, Lcom/fleapapa/helper/CallUes$10;-><init>(Lcom/fleapapa/helper/CallUes;)V

    invoke-virtual {v2, v3}, Lcom/fleapapa/util/MyImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    iget-object v2, p0, Lcom/fleapapa/helper/CallUes;->cgrp:Lcom/fleapapa/helper/Group;

    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/CallUes;->setGroup(Lcom/fleapapa/helper/Group;)V

    .line 269
    return-void

    .line 64
    .end local v0           #grpname:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 298
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fleapapa/helper/CallUes;->WHO:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 300
    return-void
.end method

.method protected onPause()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const-string v6, "|"

    .line 283
    sget-object v2, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/fleapapa/helper/CallUes;->WHO:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".onPause"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 286
    iget-boolean v2, p0, Lcom/fleapapa/helper/CallUes;->bdirty:Z

    if-eqz v2, :cond_0

    .line 287
    const-string v0, ""

    .line 288
    .local v0, s:Ljava/lang/String;
    sget-object v2, Lcom/fleapapa/util/My;->buddies:Lcom/fleapapa/helper/Group;

    iget-object v2, v2, Lcom/fleapapa/helper/Group;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 292
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "buddies"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/fleapapa/util/My;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/fleapapa/util/MyUtil;->putPreference([Ljava/lang/String;)V

    .line 294
    .end local v0           #s:Ljava/lang/String;
    :cond_0
    iput-boolean v7, p0, Lcom/fleapapa/helper/CallUes;->bdirty:Z

    .line 295
    iget-object v2, p0, Lcom/fleapapa/helper/CallUes;->call:Lcom/fleapapa/helper/CallPapa$Call;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/fleapapa/helper/CallUes;->call:Lcom/fleapapa/helper/CallPapa$Call;

    iput-boolean v7, v2, Lcom/fleapapa/helper/CallPapa$Call;->foreground:Z

    .line 296
    :cond_1
    return-void

    .line 288
    .restart local v0       #s:Ljava/lang/String;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fleapapa/helper/CallPapa$UE;

    .line 289
    .local v1, ue:Lcom/fleapapa/helper/CallPapa$UE;
    const-string v3, "\n"

    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/fleapapa/helper/CallPapa$UE;->uid:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "|"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/fleapapa/helper/CallPapa$UE;->user:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/fleapapa/helper/CallPapa$UE;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 290
    const-string v5, "|"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/fleapapa/helper/CallPapa$UE;->city:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/fleapapa/helper/CallPapa$UE;->lati:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/fleapapa/helper/CallPapa$UE;->loni:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 291
    const-string v5, "|"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/fleapapa/helper/CallPapa$UE;->avatar:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 289
    invoke-static {v0, v3, v4}, Lcom/fleapapa/util/MyUtil;->concat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const v4, 0x7f080057

    const/4 v3, 0x1

    .line 271
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fleapapa/helper/CallUes;->WHO:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".onResume"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 274
    sget-object v0, Lcom/fleapapa/helper/CallTabs;->tabact:Landroid/app/TabActivity;

    iget-object v1, p0, Lcom/fleapapa/helper/CallUes;->cgrp:Lcom/fleapapa/helper/Group;

    iget-object v1, v1, Lcom/fleapapa/helper/Group;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/TabActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v0, p0, Lcom/fleapapa/helper/CallUes;->cgrp:Lcom/fleapapa/helper/Group;

    iget-object v0, v0, Lcom/fleapapa/helper/Group;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/CallUes;->setTitle(Ljava/lang/CharSequence;)V

    .line 277
    invoke-virtual {p0, v4}, Lcom/fleapapa/helper/CallUes;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const v1, 0x7f0600eb

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    .line 278
    invoke-virtual {p0, v4}, Lcom/fleapapa/helper/CallUes;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 280
    iget-object v0, p0, Lcom/fleapapa/helper/CallUes;->call:Lcom/fleapapa/helper/CallPapa$Call;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fleapapa/helper/CallUes;->call:Lcom/fleapapa/helper/CallPapa$Call;

    iput-boolean v3, v0, Lcom/fleapapa/helper/CallPapa$Call;->foreground:Z

    .line 281
    :cond_0
    return-void
.end method

.method setGroup(Lcom/fleapapa/helper/Group;)V
    .locals 1
    .parameter "grp"

    .prologue
    .line 329
    const/4 v0, 0x0

    iput v0, p0, Lcom/fleapapa/helper/CallUes;->lmode:I

    .line 330
    iget-object v0, p0, Lcom/fleapapa/helper/CallUes;->badapter:Lcom/fleapapa/helper/CallUes$BuddyAdapter;

    invoke-virtual {v0}, Lcom/fleapapa/helper/CallUes$BuddyAdapter;->clear()V

    .line 331
    iget-object v0, p1, Lcom/fleapapa/helper/Group;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/CallUes;->setList(Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 332
    return-void
.end method

.method setList(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/fleapapa/helper/CallPapa$UE;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 314
    .local p1, ues:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lcom/fleapapa/helper/CallPapa$UE;>;"
    monitor-enter p1

    .line 315
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 314
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    invoke-virtual {p0}, Lcom/fleapapa/helper/CallUes;->updateTexts()V

    .line 322
    return-void

    .line 315
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/CallPapa$UE;

    .line 316
    .local v0, ue:Lcom/fleapapa/helper/CallPapa$UE;
    iget-object v2, p0, Lcom/fleapapa/helper/CallUes;->badapter:Lcom/fleapapa/helper/CallUes$BuddyAdapter;

    invoke-virtual {v2, v0}, Lcom/fleapapa/helper/CallUes$BuddyAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_0

    .line 317
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/fleapapa/helper/CallPapa$UE;->selected:Z

    .line 318
    iget-object v2, p0, Lcom/fleapapa/helper/CallUes;->badapter:Lcom/fleapapa/helper/CallUes$BuddyAdapter;

    invoke-virtual {v2, v0}, Lcom/fleapapa/helper/CallUes$BuddyAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 314
    .end local v0           #ue:Lcom/fleapapa/helper/CallPapa$UE;
    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method showPushHelp(I)V
    .locals 2
    .parameter "tstate"

    .prologue
    .line 334
    const v1, 0x7f080059

    invoke-virtual {p0, v1}, Lcom/fleapapa/helper/CallUes;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 335
    .local v0, help:Landroid/widget/TextView;
    sparse-switch p1, :sswitch_data_0

    .line 339
    const v1, 0x7f060010

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 341
    :goto_0
    return-void

    .line 336
    :sswitch_0
    const v1, 0x7f0600d2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 337
    :sswitch_1
    const v1, 0x7f0600d3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 338
    :sswitch_2
    const v1, 0x7f0600d4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 335
    :sswitch_data_0
    .sparse-switch
        0x7700af00 -> :sswitch_0
        0x77ff7f00 -> :sswitch_2
        0x77ffff00 -> :sswitch_1
    .end sparse-switch
.end method

.method updateTexts()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 324
    const v0, 0x7f08005b

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/CallUes;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/fleapapa/helper/CallUes;->badapter:Lcom/fleapapa/helper/CallUes$BuddyAdapter;

    invoke-virtual {v1}, Lcom/fleapapa/helper/CallUes$BuddyAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 325
    const v0, 0x7f080059

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/CallUes;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/fleapapa/helper/CallUes;->badapter:Lcom/fleapapa/helper/CallUes$BuddyAdapter;

    invoke-virtual {v1}, Lcom/fleapapa/helper/CallUes$BuddyAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 326
    const v0, 0x7700af00

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/CallUes;->showPushHelp(I)V

    .line 327
    return-void

    :cond_0
    move v1, v2

    .line 324
    goto :goto_0

    :cond_1
    move v1, v3

    .line 325
    goto :goto_1
.end method
