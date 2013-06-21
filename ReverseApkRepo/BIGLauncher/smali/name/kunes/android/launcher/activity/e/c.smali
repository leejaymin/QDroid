.class public final Lname/kunes/android/launcher/activity/e/c;
.super Ljava/lang/Object;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lname/kunes/android/launcher/activity/e/c;->a:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lname/kunes/android/launcher/activity/e/c;->a:I

    if-lez v0, :cond_0

    iget v0, p0, Lname/kunes/android/launcher/activity/e/c;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lname/kunes/android/launcher/activity/e/c;->a:I

    return-void
.end method

.method public final b()Z
    .locals 1

    iget v0, p0, Lname/kunes/android/launcher/activity/e/c;->a:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    iget v0, p0, Lname/kunes/android/launcher/activity/e/c;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    const/4 v1, -0x1

    iget v0, p0, Lname/kunes/android/launcher/activity/e/c;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lname/kunes/android/launcher/activity/e/c;->a:I

    iget v0, p0, Lname/kunes/android/launcher/activity/e/c;->a:I

    if-ge v0, v1, :cond_0

    iput v1, p0, Lname/kunes/android/launcher/activity/e/c;->a:I

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lname/kunes/android/launcher/activity/e/c;->a:I

    return-void
.end method
