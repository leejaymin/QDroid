.class final Lname/kunes/android/launcher/activity/ba;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/HomeActivity;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/HomeActivity;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/ba;->a:Lname/kunes/android/launcher/activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const/4 v0, 0x0

    sget-object v2, Lname/kunes/android/launcher/a/j;->a:Ljava/util/HashMap;

    const-string v1, ""

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Lname/kunes/android/launcher/a/a/j;

    aput-object v4, v3, v0

    const/4 v4, 0x1

    const-class v5, Lname/kunes/android/launcher/a/a/l;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Lname/kunes/android/launcher/a/a/k;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-class v5, Lname/kunes/android/launcher/a/a/b;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-class v5, Lname/kunes/android/launcher/a/a/q;

    aput-object v5, v3, v4

    array-length v4, v3

    move v9, v0

    move-object v0, v1

    move v1, v9

    :goto_0
    if-lt v1, v4, :cond_1

    iget-object v1, p0, Lname/kunes/android/launcher/activity/ba;->a:Lname/kunes/android/launcher/activity/HomeActivity;

    const v2, 0x7f09000f

    invoke-virtual {v1, v2}, Lname/kunes/android/launcher/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    aget-object v5, v3, v1

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v8

    if-eq v8, v5, :cond_4

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    if-ne v8, v5, :cond_2

    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
