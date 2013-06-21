.class final LbM;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method constructor <init>(LbL;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, LbM;->a:Landroid/content/Context;

    .line 162
    iput-object p2, p0, LbM;->a:Landroid/content/Context;

    .line 163
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 165
    iget-object v0, p0, LbM;->a:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 166
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 167
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    sput-object v1, LbL;->e:Landroid/os/Looper;

    .line 168
    new-instance v1, LbN;

    invoke-static {}, LbL;->r()LbL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, LbN;-><init>(LbL;)V

    sput-object v1, LbL;->d:LbN;

    .line 169
    sget-object v1, LbL;->d:LbN;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 170
    sget-object v1, LbL;->d:LbN;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 172
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 173
    sget-object v1, LbL;->d:LbN;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    .line 174
    sget-object v1, LbL;->d:LbN;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 175
    const/4 v0, 0x0

    sput-object v0, LbL;->e:Landroid/os/Looper;

    .line 176
    return-void
.end method
