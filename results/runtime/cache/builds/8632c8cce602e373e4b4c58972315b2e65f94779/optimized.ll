; ModuleID = '<stdin>'
source_filename = "/tmp/tmp6w0dbvh6.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [100 x i8], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 100, ptr noundef nonnull align 16 %a) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  store i8 49, ptr %a, align 16, !tbaa !5
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %a, i64 1
  store i8 0, ptr %arrayidx1, align 1, !tbaa !5
  %0 = load i32, ptr %n, align 4, !tbaa !8
  %smax5 = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %1 = add nuw i32 %smax5, 1
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc46, %for.end ]
  %exitcond6 = icmp eq i32 %i.0, %1
  %call49 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #7
  br i1 %exitcond6, label %for.end47, label %for.body

for.body:                                         ; preds = %for.cond
  %conv = trunc i64 %call49 to i32
  %smax = call i32 @llvm.smax.i32(i32 %conv, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond3

for.cond3:                                        ; preds = %for.body5, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body5 ], [ 0, %for.body ]
  %c.0 = phi i32 [ %spec.select2, %for.body5 ], [ 0, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body5

for.body5:                                        ; preds = %for.cond3
  %arrayidx6 = getelementptr inbounds nuw [100 x i8], ptr %a, i64 0, i64 %indvars.iv
  %2 = load i8, ptr %arrayidx6, align 1, !tbaa !5
  %conv7 = sext i8 %2 to i32
  %cmp9 = icmp sgt i8 %2, 52
  %spec.select = select i1 %cmp9, i32 38, i32 48
  %spec.select2 = zext i1 %cmp9 to i32
  %sub8 = shl nsw i32 %conv7, 1
  %mul22 = or disjoint i32 %c.0, 160
  %add24 = add nuw nsw i32 %mul22, %spec.select
  %sub25 = add nsw i32 %add24, %sub8
  %conv26 = trunc i32 %sub25 to i8
  store i8 %conv26, ptr %arrayidx6, align 1, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond3, !llvm.loop !10

for.end:                                          ; preds = %for.cond3
  %3 = trunc nuw nsw i32 %c.0 to i8
  %conv30 = or disjoint i8 %3, 48
  %arrayidx32 = getelementptr inbounds nuw [100 x i8], ptr %a, i64 0, i64 %wide.trip.count
  store i8 %conv30, ptr %arrayidx32, align 1, !tbaa !5
  %spec.select3 = add nuw nsw i32 %c.0, %smax
  %idxprom42 = zext nneg i32 %spec.select3 to i64
  %arrayidx43 = getelementptr inbounds nuw [100 x i8], ptr %a, i64 0, i64 %idxprom42
  store i8 0, ptr %arrayidx43, align 1, !tbaa !5
  %inc46 = add nuw i32 %i.0, 1
  br label %for.cond, !llvm.loop !13

for.end47:                                        ; preds = %for.cond
  %4 = and i64 %call49, 4294967295
  br label %for.cond52

for.cond52:                                       ; preds = %for.inc58, %for.end47
  %indvars.iv7 = phi i64 [ %6, %for.inc58 ], [ %4, %for.end47 ]
  %5 = trunc nuw i64 %indvars.iv7 to i32
  %cmp53 = icmp sgt i32 %5, 0
  br i1 %cmp53, label %for.inc58, label %for.end59

for.inc58:                                        ; preds = %for.cond52
  %6 = add nsw i64 %indvars.iv7, -1
  %arrayidx56 = getelementptr inbounds nuw [100 x i8], ptr %a, i64 0, i64 %6
  %7 = load i8, ptr %arrayidx56, align 1, !tbaa !5
  %call57 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %7)
  br label %for.cond52, !llvm.loop !14

for.end59:                                        ; preds = %for.cond52
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #8
  call void @llvm.lifetime.end.p0(i64 noundef 100, ptr noundef nonnull %a) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind willreturn }
attributes #7 = { nounwind willreturn memory(read) }
attributes #8 = { nounwind }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
