.class public final Lname/kunes/android/launcher/b/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lname/kunes/android/launcher/b/u;

    invoke-direct {v0}, Lname/kunes/android/launcher/b/u;-><init>()V

    sput-object v0, Lname/kunes/android/launcher/b/d;->a:Landroid/database/ContentObserver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lname/kunes/android/c/c;->a:Landroid/net/Uri;

    sget-object v2, Lname/kunes/android/launcher/b/d;->a:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    sget-object v1, Lname/kunes/android/c/i;->a:Landroid/net/Uri;

    sget-object v2, Lname/kunes/android/launcher/b/d;->a:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lname/kunes/android/launcher/b/d;->a:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
