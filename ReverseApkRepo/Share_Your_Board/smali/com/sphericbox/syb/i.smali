.class public final Lcom/sphericbox/syb/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/OpenableColumns;


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final bh:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const-string v6, "_size"

    const-string v5, "_id"

    const-string v4, "_display_name"

    const-string v3, "_data"

    const-string v2, "_count"

    .line 302
    const-string v0, "content://com.sphericbox.syb.SYBProvider/elements"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sphericbox/syb/i;->CONTENT_URI:Landroid/net/Uri;

    .line 318
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sphericbox/syb/i;->bh:Ljava/util/Map;

    .line 321
    sget-object v0, Lcom/sphericbox/syb/i;->bh:Ljava/util/Map;

    const-string v1, "_id"

    const-string v1, "_id"

    invoke-interface {v0, v5, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    sget-object v0, Lcom/sphericbox/syb/i;->bh:Ljava/util/Map;

    const-string v1, "_count"

    const-string v1, "_count"

    invoke-interface {v0, v2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    sget-object v0, Lcom/sphericbox/syb/i;->bh:Ljava/util/Map;

    const-string v1, "_display_name"

    const-string v1, "_display_name"

    invoke-interface {v0, v4, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    sget-object v0, Lcom/sphericbox/syb/i;->bh:Ljava/util/Map;

    const-string v1, "_size"

    const-string v1, "_size"

    invoke-interface {v0, v6, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    sget-object v0, Lcom/sphericbox/syb/i;->bh:Ljava/util/Map;

    const-string v1, "_data"

    const-string v1, "_data"

    invoke-interface {v0, v3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    sget-object v0, Lcom/sphericbox/syb/i;->bh:Ljava/util/Map;

    const-string v1, "comment"

    const-string v2, "comment"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    sget-object v0, Lcom/sphericbox/syb/i;->bh:Ljava/util/Map;

    const-string v1, "created"

    const-string v2, "created"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    sget-object v0, Lcom/sphericbox/syb/i;->bh:Ljava/util/Map;

    const-string v1, "mime_type"

    const-string v2, "mime_type"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic D()Ljava/util/Map;
    .locals 1

    .prologue
    .line 297
    sget-object v0, Lcom/sphericbox/syb/i;->bh:Ljava/util/Map;

    return-object v0
.end method
