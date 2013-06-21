.class public final Lname/kunes/android/launcher/a/b/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lname/kunes/android/launcher/a/b/c;->a:Landroid/app/Activity;

    iput-object p2, p0, Lname/kunes/android/launcher/a/b/c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lname/kunes/android/launcher/a/b/c;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lname/kunes/android/launcher/a/f;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
