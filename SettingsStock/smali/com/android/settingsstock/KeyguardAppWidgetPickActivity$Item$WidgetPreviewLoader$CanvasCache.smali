.class Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$CanvasCache;
.super Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$WeakReferenceThreadLocal;
.source "KeyguardAppWidgetPickActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CanvasCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$WeakReferenceThreadLocal",
        "<",
        "Landroid/graphics/Canvas;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$CanvasCache;->this$1:Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;

    invoke-direct {p0, p1}, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$WeakReferenceThreadLocal;-><init>(Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;)V

    return-void
.end method


# virtual methods
.method protected initialValue()Landroid/graphics/Canvas;
    .locals 1

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$CanvasCache;->initialValue()Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method
