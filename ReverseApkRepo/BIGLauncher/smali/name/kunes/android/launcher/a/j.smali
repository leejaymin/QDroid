.class public final Lname/kunes/android/launcher/a/j;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/util/HashMap;

.field private static b:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lname/kunes/android/launcher/a/j;->a:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lname/kunes/android/launcher/a/j;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sput-object p0, Lname/kunes/android/launcher/a/j;->b:Ljava/lang/Runnable;

    return-void
.end method

.method public static a(Lname/kunes/android/launcher/a/a;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lname/kunes/android/launcher/a/j;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lname/kunes/android/launcher/a/j;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    sget-object v0, Lname/kunes/android/launcher/a/j;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
