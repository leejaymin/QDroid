.class public Lcom/fleapapa/helper/CallGrps;
.super Landroid/app/Activity;
.source "CallGrps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fleapapa/helper/CallGrps$GroupAdapter;
    }
.end annotation


# static fields
.field static gdirty:Z

.field static groups:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/fleapapa/helper/Group;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final WHO:Ljava/lang/String;

.field cid:I

.field gadapter:Lcom/fleapapa/helper/CallGrps$GroupAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fleapapa/helper/CallGrps$GroupAdapter",
            "<",
            "Lcom/fleapapa/helper/Group;",
            ">;"
        }
    .end annotation
.end field

.field glview:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/fleapapa/helper/CallGrps;->groups:Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fleapapa/helper/CallGrps;->WHO:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method flushGroups()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 134
    sget-boolean v4, Lcom/fleapapa/helper/CallGrps;->gdirty:Z

    if-nez v4, :cond_0

    .line 144
    :goto_0
    return-void

    .line 135
    :cond_0
    sput-boolean v8, Lcom/fleapapa/helper/CallGrps;->gdirty:Z

    .line 136
    const-string v2, ""

    .line 137
    .local v2, s:Ljava/lang/String;
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/fleapapa/helper/CallGrps;->gadapter:Lcom/fleapapa/helper/CallGrps$GroupAdapter;

    invoke-virtual {v4}, Lcom/fleapapa/helper/CallGrps$GroupAdapter;->getCount()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 143
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cgroups"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v6, Lcom/fleapapa/util/My;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v4}, Lcom/fleapapa/util/MyUtil;->putPreference([Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_1
    iget-object v4, p0, Lcom/fleapapa/helper/CallGrps;->gadapter:Lcom/fleapapa/helper/CallGrps$GroupAdapter;

    invoke-virtual {v4, v1}, Lcom/fleapapa/helper/CallGrps$GroupAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/Group;

    .line 139
    .local v0, g:Lcom/fleapapa/helper/Group;
    const-string v4, "\n"

    iget-object v5, v0, Lcom/fleapapa/helper/Group;->name:Ljava/lang/String;

    invoke-static {v2, v4, v5}, Lcom/fleapapa/util/MyUtil;->concat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 140
    iget-object v4, v0, Lcom/fleapapa/helper/Group;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 140
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fleapapa/helper/CallPapa$UE;

    .line 141
    .local v3, ue:Lcom/fleapapa/helper/CallPapa$UE;
    const-string v5, "|"

    new-instance v6, Ljava/lang/StringBuilder;

    iget v7, v3, Lcom/fleapapa/helper/CallPapa$UE;->uid:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/fleapapa/util/MyUtil;->concat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 124
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 125
    packed-switch p1, :pswitch_data_0

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 127
    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/fleapapa/helper/CallGrps;->setResult(I)V

    .line 128
    iget v0, p0, Lcom/fleapapa/helper/CallGrps;->cid:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/fleapapa/helper/CallGrps;->finish()V

    goto :goto_0

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "icicle"

    .prologue
    const v13, 0x7f080025

    const/4 v12, 0x0

    const-string v10, "\n"

    .line 38
    sget-object v7, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/fleapapa/helper/CallGrps;->WHO:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ".onCreate"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-static {p0}, Lcom/fleapapa/util/My;->getScreenDimension(Landroid/app/Activity;)V

    .line 41
    const v7, 0x7f030007

    invoke-virtual {p0, v7}, Lcom/fleapapa/helper/CallGrps;->setContentView(I)V

    .line 43
    invoke-virtual {p0}, Lcom/fleapapa/helper/CallGrps;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 44
    .local v4, intent:Landroid/content/Intent;
    const-string v7, "cid"

    invoke-virtual {v4, v7, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/fleapapa/helper/CallGrps;->cid:I

    .line 45
    const v7, 0x7f080026

    invoke-virtual {p0, v7}, Lcom/fleapapa/helper/CallGrps;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    iput-object v7, p0, Lcom/fleapapa/helper/CallGrps;->glview:Landroid/widget/ListView;

    .line 46
    iget-object v7, p0, Lcom/fleapapa/helper/CallGrps;->glview:Landroid/widget/ListView;

    new-instance v8, Lcom/fleapapa/helper/CallGrps$GroupAdapter;

    invoke-direct {v8, p0}, Lcom/fleapapa/helper/CallGrps$GroupAdapter;-><init>(Lcom/fleapapa/helper/CallGrps;)V

    iput-object v8, p0, Lcom/fleapapa/helper/CallGrps;->gadapter:Lcom/fleapapa/helper/CallGrps$GroupAdapter;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 47
    iget-object v7, p0, Lcom/fleapapa/helper/CallGrps;->gadapter:Lcom/fleapapa/helper/CallGrps$GroupAdapter;

    sget-object v8, Lcom/fleapapa/util/My;->buddies:Lcom/fleapapa/helper/Group;

    invoke-virtual {v7, v8}, Lcom/fleapapa/helper/CallGrps$GroupAdapter;->add(Ljava/lang/Object;)V

    .line 49
    sget-object v7, Lcom/fleapapa/helper/CallGrps;->groups:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 50
    sget-object v7, Lcom/fleapapa/helper/CallGrps;->groups:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v8, Lcom/fleapapa/util/My;->buddies:Lcom/fleapapa/helper/Group;

    iget-object v8, v8, Lcom/fleapapa/helper/Group;->name:Ljava/lang/String;

    sget-object v9, Lcom/fleapapa/util/My;->buddies:Lcom/fleapapa/helper/Group;

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, dgrps:Ljava/lang/String;
    const-string v7, "\n"

    const v7, 0x7f0600f3

    invoke-virtual {p0, v7}, Lcom/fleapapa/helper/CallGrps;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v10, v7}, Lcom/fleapapa/util/MyUtil;->concat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    const-string v7, "\n"

    const v7, 0x7f0600f4

    invoke-virtual {p0, v7}, Lcom/fleapapa/helper/CallGrps;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v10, v7}, Lcom/fleapapa/util/MyUtil;->concat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    const-string v7, "\n"

    const v7, 0x7f0600f5

    invoke-virtual {p0, v7}, Lcom/fleapapa/helper/CallGrps;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v10, v7}, Lcom/fleapapa/util/MyUtil;->concat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    const-string v7, "\n"

    const v7, 0x7f0600f6

    invoke-virtual {p0, v7}, Lcom/fleapapa/helper/CallGrps;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v10, v7}, Lcom/fleapapa/util/MyUtil;->concat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "cgroups"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v8, Lcom/fleapapa/util/My;->uid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    aput-object v0, v8, v12

    invoke-static {v7, v8}, Lcom/fleapapa/util/MyUtil;->getPreference(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "\\n"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    move v9, v12

    :goto_0
    if-lt v9, v8, :cond_0

    .line 71
    iget-object v7, p0, Lcom/fleapapa/helper/CallGrps;->glview:Landroid/widget/ListView;

    new-instance v8, Lcom/fleapapa/helper/CallGrps$1;

    invoke-direct {v8, p0}, Lcom/fleapapa/helper/CallGrps$1;-><init>(Lcom/fleapapa/helper/CallGrps;)V

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 81
    const v7, 0x7f080024

    invoke-virtual {p0, v7}, Lcom/fleapapa/helper/CallGrps;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    new-instance v8, Lcom/fleapapa/helper/CallGrps$2;

    invoke-direct {v8, p0}, Lcom/fleapapa/helper/CallGrps$2;-><init>(Lcom/fleapapa/helper/CallGrps;)V

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 87
    invoke-virtual {p0, v13}, Lcom/fleapapa/helper/CallGrps;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/fleapapa/util/MyImageButton;

    const v8, 0x7f0600ef

    invoke-virtual {p0, v8}, Lcom/fleapapa/helper/CallGrps;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/fleapapa/util/MyImageButton;->text:Ljava/lang/String;

    .line 88
    invoke-virtual {p0, v13}, Lcom/fleapapa/helper/CallGrps;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/fleapapa/util/MyImageButton;

    new-instance v8, Lcom/fleapapa/helper/CallGrps$3;

    invoke-direct {v8, p0}, Lcom/fleapapa/helper/CallGrps$3;-><init>(Lcom/fleapapa/helper/CallGrps;)V

    invoke-virtual {v7, v8}, Lcom/fleapapa/util/MyImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    return-void

    .line 58
    :cond_0
    aget-object v1, v7, v9

    .line 59
    .local v1, g:Ljava/lang/String;
    const-string v10, "\\|"

    invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 60
    .local v5, tk:[Ljava/lang/String;
    if-eqz v5, :cond_1

    array-length v10, v5

    if-nez v10, :cond_2

    .line 58
    :cond_1
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 61
    :cond_2
    aget-object v10, v5, v12

    invoke-static {v10}, Lcom/fleapapa/util/MyUtil;->empty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 62
    new-instance v2, Lcom/fleapapa/helper/Group;

    aget-object v10, v5, v12

    invoke-direct {v2, v10}, Lcom/fleapapa/helper/Group;-><init>(Ljava/lang/String;)V

    .line 63
    .local v2, grp:Lcom/fleapapa/helper/Group;
    const/4 v3, 0x1

    .local v3, i:I
    :goto_2
    array-length v10, v5

    if-lt v3, v10, :cond_3

    .line 68
    iget-object v10, p0, Lcom/fleapapa/helper/CallGrps;->gadapter:Lcom/fleapapa/helper/CallGrps$GroupAdapter;

    invoke-virtual {v10, v2}, Lcom/fleapapa/helper/CallGrps$GroupAdapter;->add(Ljava/lang/Object;)V

    .line 69
    sget-object v10, Lcom/fleapapa/helper/CallGrps;->groups:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v11, v2, Lcom/fleapapa/helper/Group;->name:Ljava/lang/String;

    invoke-virtual {v10, v11, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 64
    :cond_3
    sget-object v10, Lcom/fleapapa/util/My;->buddies:Lcom/fleapapa/helper/Group;

    iget-object v10, v10, Lcom/fleapapa/helper/Group;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    aget-object v11, v5, v3

    invoke-static {v11}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fleapapa/helper/CallPapa$UE;

    .line 65
    .local v6, ue:Lcom/fleapapa/helper/CallPapa$UE;
    if-nez v6, :cond_4

    .line 63
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 66
    :cond_4
    iget-object v10, v2, Lcom/fleapapa/helper/Group;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    iget v11, v6, Lcom/fleapapa/helper/CallPapa$UE;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 119
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fleapapa/helper/CallGrps;->WHO:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {p0}, Lcom/fleapapa/helper/CallGrps;->flushGroups()V

    .line 121
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 122
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 115
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fleapapa/helper/CallGrps;->WHO:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".onPause"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 117
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const v4, 0x7f080024

    const v3, 0x7f06000b

    .line 102
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fleapapa/helper/CallGrps;->WHO:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".onResume"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 105
    sget-object v0, Lcom/fleapapa/helper/CallTabs;->tabact:Landroid/app/TabActivity;

    invoke-virtual {v0, v3}, Landroid/app/TabActivity;->setTitle(I)V

    .line 106
    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/CallGrps;->setTitle(I)V

    .line 108
    invoke-virtual {p0, v4}, Lcom/fleapapa/helper/CallGrps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const v1, 0x7f0600f0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    .line 109
    invoke-virtual {p0, v4}, Lcom/fleapapa/helper/CallGrps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 111
    iget-object v0, p0, Lcom/fleapapa/helper/CallGrps;->gadapter:Lcom/fleapapa/helper/CallGrps$GroupAdapter;

    invoke-virtual {v0}, Lcom/fleapapa/helper/CallGrps$GroupAdapter;->notifyDataSetChanged()V

    .line 112
    invoke-virtual {p0}, Lcom/fleapapa/helper/CallGrps;->flushGroups()V

    .line 113
    return-void
.end method
