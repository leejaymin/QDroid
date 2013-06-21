.class public Lcom/ui/LapseIt/providers/pro/ProjectsContentProvider$FRAME_COLUMNS;
.super Ljava/lang/Object;
.source "ProjectsContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/providers/pro/ProjectsContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FRAME_COLUMNS"
.end annotation


# static fields
.field public static final FILENAME:Ljava/lang/String; = "filename"

.field public static final FILEPATH:Ljava/lang/String; = "filepath"

.field public static final LATITUDE:Ljava/lang/String; = "lat"

.field public static final LONGITUDE:Ljava/lang/String; = "long"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/providers/pro/ProjectsContentProvider;


# direct methods
.method public constructor <init>(Lcom/ui/LapseIt/providers/pro/ProjectsContentProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/ui/LapseIt/providers/pro/ProjectsContentProvider$FRAME_COLUMNS;->this$0:Lcom/ui/LapseIt/providers/pro/ProjectsContentProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
