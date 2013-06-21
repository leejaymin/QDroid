.class public final Lname/kunes/android/b/f;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/app/Activity;

.field private static b:Z

.field private static c:Ljava/util/Stack;

.field private static d:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lname/kunes/android/b/f;->c:Ljava/util/Stack;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lname/kunes/android/b/f;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V
    .locals 6

    const-wide/16 v2, 0x64

    sget-boolean v0, Lname/kunes/android/b/f;->b:Z

    if-eqz v0, :cond_1

    sget-object v0, Lname/kunes/android/b/f;->d:Ljava/util/Timer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lname/kunes/android/b/f;->d:Ljava/util/Timer;

    new-instance v1, Lname/kunes/android/b/g;

    invoke-direct {v1}, Lname/kunes/android/b/g;-><init>()V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    sget-object v0, Lname/kunes/android/b/f;->c:Ljava/util/Stack;

    new-instance v1, Lname/kunes/android/b/b;

    invoke-direct {v1, p0, p1}, Lname/kunes/android/b/b;-><init>(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lname/kunes/android/b/f;->d()V

    goto :goto_0
.end method

.method public static a(ZLandroid/app/Activity;)V
    .locals 0

    sput-boolean p0, Lname/kunes/android/b/f;->b:Z

    sput-object p1, Lname/kunes/android/b/f;->a:Landroid/app/Activity;

    return-void
.end method

.method static synthetic b()Ljava/util/Stack;
    .locals 1

    sget-object v0, Lname/kunes/android/b/f;->c:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic c()V
    .locals 0

    invoke-static {}, Lname/kunes/android/b/f;->d()V

    return-void
.end method

.method private static d()V
    .locals 1

    sget-object v0, Lname/kunes/android/b/f;->d:Ljava/util/Timer;

    if-eqz v0, :cond_0

    sget-object v0, Lname/kunes/android/b/f;->d:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    sget-object v0, Lname/kunes/android/b/f;->d:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    sput-object v0, Lname/kunes/android/b/f;->d:Ljava/util/Timer;

    :cond_0
    return-void
.end method
