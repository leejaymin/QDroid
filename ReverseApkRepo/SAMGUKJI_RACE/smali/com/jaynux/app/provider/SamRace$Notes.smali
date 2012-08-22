.class public final Lcom/jaynux/app/provider/SamRace$Notes;
.super Ljava/lang/Object;
.source "SamRace.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaynux/app/provider/SamRace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Notes"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.google.note"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.google.note"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CREATED_DATE:Ljava/lang/String; = "created"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "modified DESC"

.field public static final DISTANCE:Ljava/lang/String; = "distance"

.field public static final MODIFIED_DATE:Ljava/lang/String; = "modified"

.field public static final NOTE:Ljava/lang/String; = "note"

.field public static final PARTICIPATION_NUMBER:Ljava/lang/String; = "participation"

.field public static final RACETIME:Ljava/lang/String; = "racetime"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final WINING:Ljava/lang/String; = "win"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "content://com.jaynux.provider.SamRace/notes"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 14
    sput-object v0, Lcom/jaynux/app/provider/SamRace$Notes;->CONTENT_URI:Landroid/net/Uri;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
