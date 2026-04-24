; ModuleID = '<stdin>'
source_filename = "/tmp/tmpk7askaw6.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%struct.word = type { [20 x i8], i32 }

@word = dso_local global [1000 x %struct.word] zeroinitializer, align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"\0A%s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %s\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not19 = icmp slt i32 %0, 1
  br i1 %cmp.not19, label %for.end33, label %for.body

for.cond4.preheader:                              ; preds = %for.body
  %1 = icmp slt i32 %2, 1
  br i1 %1, label %for.end33, label %for.body6

for.body:                                         ; preds = %entry, %for.body
  %p.021 = phi ptr [ %incdec.ptr, %for.body ], [ @word, %entry ]
  %i.020 = phi i32 [ %inc, %for.body ], [ 1, %entry ]
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %p.021)
  %call3 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %p.021) #6
  %conv = trunc i64 %call3 to i32
  %a = getelementptr inbounds nuw i8, ptr %p.021, i64 20
  store i32 %conv, ptr %a, align 4, !tbaa !9
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %p.021, i64 24
  %inc = add nuw nsw i32 %i.020, 1
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not.not = icmp slt i32 %i.020, %2
  br i1 %cmp.not.not, label %for.body, label %for.cond4.preheader, !llvm.loop !11

for.body6:                                        ; preds = %for.cond4.preheader, %for.inc31
  %p.125 = phi ptr [ %p.2, %for.inc31 ], [ @word, %for.cond4.preheader ]
  %line.024 = phi i32 [ %line.1, %for.inc31 ], [ undef, %for.cond4.preheader ]
  %i.123 = phi i32 [ %inc32, %for.inc31 ], [ 1, %for.cond4.preheader ]
  %cmp7 = icmp eq i32 %i.123, 1
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %for.body6
  %call10 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %p.125)
  %a11 = getelementptr inbounds nuw i8, ptr %p.125, i64 20
  %3 = load i32, ptr %a11, align 4, !tbaa !9
  br label %for.inc31

if.else:                                          ; preds = %for.body6
  %a13 = getelementptr inbounds nuw i8, ptr %p.125, i64 20
  %4 = load i32, ptr %a13, align 4, !tbaa !9
  %add = add nsw i32 %4, %line.024
  %cmp15 = icmp sgt i32 %add, 79
  br i1 %cmp15, label %if.then16, label %if.else22

if.then16:                                        ; preds = %if.else
  %call19 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull %p.125)
  %5 = load i32, ptr %a13, align 4, !tbaa !9
  br label %for.inc31

if.else22:                                        ; preds = %if.else
  %call25 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull %p.125)
  %6 = load i32, ptr %a13, align 4, !tbaa !9
  %add27 = add i32 %line.024, 1
  %add28 = add i32 %add27, %6
  br label %for.inc31

for.inc31:                                        ; preds = %if.then, %if.else22, %if.then16
  %line.1 = phi i32 [ %3, %if.then ], [ %5, %if.then16 ], [ %add28, %if.else22 ]
  %p.2 = getelementptr inbounds nuw i8, ptr %p.125, i64 24
  %inc32 = add nuw nsw i32 %i.123, 1
  %7 = load i32, ptr %n, align 4, !tbaa !5
  %cmp5.not.not = icmp slt i32 %i.123, %7
  br i1 %cmp5.not.not, label %for.body6, label %for.end33, !llvm.loop !14

for.end33:                                        ; preds = %for.inc31, %entry, %for.cond4.preheader
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !6, i64 20}
!10 = !{!"_ZTS4word", !7, i64 0, !6, i64 20}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !12, !13}
