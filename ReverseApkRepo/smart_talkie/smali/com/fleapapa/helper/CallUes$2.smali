.class Lcom/fleapapa/helper/CallUes$2;
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
    iput-object p1, p0, Lcom/fleapapa/helper/CallUes$2;->this$0:Lcom/fleapapa/helper/CallUes;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const v3, 0x7f08005b

    const/4 v4, 0x0

    .line 80
    iget-object v2, p0, Lcom/fleapapa/helper/CallUes$2;->this$0:Lcom/fleapapa/helper/CallUes;

    invoke-static {v2, v4}, Lcom/fleapapa/util/MyUtil;->progress(Landroid/app/Activity;Z)V

    .line 81
    iget-object v2, p0, Lcom/fleapapa/helper/CallUes$2;->this$0:Lcom/fleapapa/helper/CallUes;

    iget-object v2, v2, Lcom/fleapapa/helper/CallUes;->badapter:Lcom/fleapapa/helper/CallUes$BuddyAdapter;

    invoke-virtual {v2}, Lcom/fleapapa/helper/CallUes$BuddyAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 82
    iget-object v2, p0, Lcom/fleapapa/helper/CallUes$2;->this$0:Lcom/fleapapa/helper/CallUes;

    invoke-virtual {v2, v3}, Lcom/fleapapa/helper/CallUes;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 84
    sget-object v2, Lcom/fleapapa/helper/CallUes;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    new-array v3, v4, [Lcom/fleapapa/helper/CallPapa$UE;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/fleapapa/helper/CallPapa$UE;

    .line 85
    .local v1, ues:[Lcom/fleapapa/helper/CallPapa$UE;
    new-instance v2, Lcom/fleapapa/helper/CallUes$2$1;

    invoke-direct {v2, p0}, Lcom/fleapapa/helper/CallUes$2$1;-><init>(Lcom/fleapapa/helper/CallUes$2;)V

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 91
    iget-object v2, p0, Lcom/fleapapa/helper/CallUes$2;->this$0:Lcom/fleapapa/helper/CallUes;

    iget-object v2, v2, Lcom/fleapapa/helper/CallUes;->badapter:Lcom/fleapapa/helper/CallUes$BuddyAdapter;

    invoke-virtual {v2}, Lcom/fleapapa/helper/CallUes$BuddyAdapter;->clear()V

    .line 92
    array-length v2, v1

    move v3, v4

    :goto_0
    if-lt v3, v2, :cond_0

    .line 96
    .end local v1           #ues:[Lcom/fleapapa/helper/CallPapa$UE;
    :goto_1
    iget-object v2, p0, Lcom/fleapapa/helper/CallUes$2;->this$0:Lcom/fleapapa/helper/CallUes;

    invoke-virtual {v2}, Lcom/fleapapa/helper/CallUes;->updateTexts()V

    .line 97
    return-void

    .line 92
    .restart local v1       #ues:[Lcom/fleapapa/helper/CallPapa$UE;
    :cond_0
    aget-object v0, v1, v3

    .local v0, ue:Lcom/fleapapa/helper/CallPapa$UE;
    iget-object v4, p0, Lcom/fleapapa/helper/CallUes$2;->this$0:Lcom/fleapapa/helper/CallUes;

    iget-object v4, v4, Lcom/fleapapa/helper/CallUes;->badapter:Lcom/fleapapa/helper/CallUes$BuddyAdapter;

    invoke-virtual {v4, v0}, Lcom/fleapapa/helper/CallUes$BuddyAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 95
    .end local v0           #ue:Lcom/fleapapa/helper/CallPapa$UE;
    .end local v1           #ues:[Lcom/fleapapa/helper/CallPapa$UE;
    :cond_1
    iget-object v2, p0, Lcom/fleapapa/helper/CallUes$2;->this$0:Lcom/fleapapa/helper/CallUes;

    invoke-virtual {v2, v3}, Lcom/fleapapa/helper/CallUes;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
