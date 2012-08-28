.class public final Lorg/theb/provider/HostDb$Hosts;
.super Ljava/lang/Object;
.source "HostDb.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/theb/provider/HostDb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Hosts"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "nickname DESC"

.field public static final EMULATION:Ljava/lang/String; = "emulation"

.field public static final HOSTKEY:Ljava/lang/String; = "hostkey"

.field public static final HOSTNAME:Ljava/lang/String; = "hostname"

.field public static final NICKNAME:Ljava/lang/String; = "nickname"

.field public static final PORT:Ljava/lang/String; = "port"

.field public static final SCROLLBACK:Ljava/lang/String; = "scrollback"

.field public static final USERNAME:Ljava/lang/String; = "username"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "content://org.theb.provider.HostDb/hosts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 27
    sput-object v0, Lorg/theb/provider/HostDb$Hosts;->CONTENT_URI:Landroid/net/Uri;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
