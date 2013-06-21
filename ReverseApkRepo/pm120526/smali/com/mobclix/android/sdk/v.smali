.class public final Lcom/mobclix/android/sdk/v;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/graphics/Bitmap;

.field private static b:Landroid/graphics/Bitmap;

.field private static c:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/mobclix/android/sdk/v;->a:Landroid/graphics/Bitmap;

    sput-object v0, Lcom/mobclix/android/sdk/v;->b:Landroid/graphics/Bitmap;

    sput-object v0, Lcom/mobclix/android/sdk/v;->c:Landroid/graphics/Bitmap;

    return-void
.end method

.method static declared-synchronized a()Landroid/graphics/Bitmap;
    .locals 4

    const-class v0, Lcom/mobclix/android/sdk/v;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mobclix/android/sdk/v;->a:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    const-string v1, "iVBORw0KGgoAAAANSUhEUgAAADwAAAA8CAYAAAA6/NlyAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEzNDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBNYWNpbnRvc2giIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6MEUyODYxOTgxNkE4MTFFMEIzNzk4NDE0QTY2MzlERkQiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6MEUyODYxOTkxNkE4MTFFMEIzNzk4NDE0QTY2MzlERkQiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDowRTI4NjE5NjE2QTgxMUUwQjM3OTg0MTRBNjYzOURGRCIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDowRTI4NjE5NzE2QTgxMUUwQjM3OTg0MTRBNjYzOURGRCIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PhhikLoAAAlZSURBVHja7JtdaFRH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"

    invoke-static {v1}, Lcom/mobclix/android/sdk/a;->a(Ljava/lang/String;)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    const/4 v2, 0x0

    :try_start_2
    array-length v3, v1

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/mobclix/android/sdk/v;->a:Landroid/graphics/Bitmap;

    :cond_0
    sget-object v1, Lcom/mobclix/android/sdk/v;->a:Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit v0

    return-object v1

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
