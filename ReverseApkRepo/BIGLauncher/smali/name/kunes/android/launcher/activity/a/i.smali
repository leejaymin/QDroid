.class public final Lname/kunes/android/launcher/activity/a/i;
.super Ljava/lang/Object;


# instance fields
.field private final a:[Ljava/lang/CharSequence;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lname/kunes/android/launcher/activity/a/i;->a:[Ljava/lang/CharSequence;

    iput-object p2, p0, Lname/kunes/android/launcher/activity/a/i;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()[Ljava/lang/CharSequence;
    .locals 7

    iget-object v2, p0, Lname/kunes/android/launcher/activity/a/i;->a:[Ljava/lang/CharSequence;

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    array-length v4, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v4, :cond_0

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    return-object v0

    :cond_0
    aget-object v0, v2, v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lname/kunes/android/launcher/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v0, p0, Lname/kunes/android/launcher/activity/a/i;->b:Ljava/lang/String;

    :cond_1
    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
