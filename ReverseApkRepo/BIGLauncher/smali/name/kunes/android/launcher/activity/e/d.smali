.class public final Lname/kunes/android/launcher/activity/e/d;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/app/Activity;)Landroid/location/LocationManager;
    .locals 1

    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Landroid/location/LocationListener;)V
    .locals 1

    new-instance v0, Lname/kunes/android/launcher/c/d;

    invoke-direct {v0, p0}, Lname/kunes/android/launcher/c/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lname/kunes/android/launcher/c/d;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "network"

    invoke-static {p0, v0, p1}, Lname/kunes/android/launcher/activity/e/d;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/location/LocationListener;)V

    const-string v0, "gps"

    invoke-static {p0, v0, p1}, Lname/kunes/android/launcher/activity/e/d;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/location/LocationListener;)V

    :cond_0
    return-void
.end method

.method private static a(Landroid/app/Activity;Ljava/lang/String;Landroid/location/LocationListener;)V
    .locals 6

    :try_start_0
    invoke-static {p0}, Lname/kunes/android/launcher/activity/e/d;->a(Landroid/app/Activity;)Landroid/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lname/kunes/android/launcher/activity/e/d;->a(Landroid/app/Activity;)Landroid/location/LocationManager;

    move-result-object v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;Landroid/location/LocationListener;)V
    .locals 1

    :try_start_0
    invoke-static {p0}, Lname/kunes/android/launcher/activity/e/d;->a(Landroid/app/Activity;)Landroid/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
