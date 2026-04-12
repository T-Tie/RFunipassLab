; ModuleID = '<stdin>'
source_filename = "/tmp/tmpc9zjk96c.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %c = alloca [100 x [100 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 10000, ptr noundef %c) #5
  call void @llvm.memset.p0.i64(ptr noundef writeonly align 16 %c, i8 noundef 0, i64 noundef 10000, i1 noundef false) #6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc14, %for.inc ]
  %j.0 = phi i32 [ 0, %entry ], [ %j.1, %for.inc ]
  %call = call i32 @getchar()
  %conv = trunc i32 %call to i8
  %idxprom = sext i32 %j.0 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i8]], ptr %c, i64 0, i64 %idxprom
  %idxprom1 = sext i32 %i.0 to i64
  %arrayidx2 = getelementptr inbounds [100 x i8], ptr %arrayidx, i64 0, i64 %idxprom1
  store i8 %conv, ptr %arrayidx2, align 1, !tbaa !5
  %conv3 = sext i8 %conv to i32
  %cmp = icmp ne i32 %conv3, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %cmp9 = icmp eq i32 %conv3, 32
  br i1 %cmp9, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  store i8 0, ptr %arrayidx2, align 1, !tbaa !5
  %inc = add nsw i32 %j.0, 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %i.1 = phi i32 [ -1, %if.then ], [ %i.0, %for.body ]
  %j.1 = phi i32 [ %inc, %if.then ], [ %j.0, %for.body ]
  %inc14 = add nsw i32 %i.1, 1
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  store i8 0, ptr %arrayidx2, align 1, !tbaa !5
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc26, %for.end
  %j.2 = phi i32 [ %j.0, %for.end ], [ %dec, %for.inc26 ]
  %cmp20 = icmp sgt i32 %j.2, 0
  br i1 %cmp20, label %for.inc26, label %for.end27

for.inc26:                                        ; preds = %for.cond19
  %idxprom22 = sext i32 %j.2 to i64
  %arrayidx23 = getelementptr inbounds [100 x [100 x i8]], ptr %c, i64 0, i64 %idxprom22
  %call25 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %arrayidx23) #7
  %dec = add nsw i32 %j.2, -1
  br label %for.cond19, !llvm.loop !11

for.end27:                                        ; preds = %for.cond19
  %call30 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %c) #7
  call void @llvm.lifetime.end.p0(i64 noundef 10000, ptr noundef %c) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: inlinehint mustprogress uwtable
define available_externally i32 @getchar() local_unnamed_addr #3 {
entry:
  %0 = load ptr, ptr @stdin, align 8, !tbaa !12
  %call = call i32 @getc(ptr noundef %0) #7
  ret i32 %call
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr noundef captures(none)) local_unnamed_addr #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nofree }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !9, !10}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 _ZTS8_IO_FILE", !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
