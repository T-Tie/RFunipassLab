; ModuleID = '<stdin>'
source_filename = "/tmp/tmpg_d1jn4t.cpp"
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
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [1000 x i32], align 16
  %b = alloca [1000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  call void @llvm.lifetime.start.p0(i64 4000, ptr nonnull %a) #4
  call void @llvm.lifetime.start.p0(i64 4000, ptr nonnull %b) #4
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %d.0 = phi i32 [ %d.1, %for.inc ], [ 0, %entry ]
  %j.0 = phi i32 [ %j.1, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond11.preheader

for.cond11.preheader:                             ; preds = %for.cond
  %sub = add nsw i32 %d.0, -1
  %smax = call i32 @llvm.smax.i32(i32 %sub, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond11

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [1000 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %2 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %3 = and i32 %2, -2147483647
  %cmp4 = icmp eq i32 %3, 1
  br i1 %cmp4, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %idxprom7 = sext i32 %j.0 to i64
  %arrayidx8 = getelementptr inbounds [1000 x i32], ptr %b, i64 0, i64 %idxprom7
  store i32 %2, ptr %arrayidx8, align 4, !tbaa !5
  %inc = add nsw i32 %j.0, 1
  %inc9 = add nsw i32 %d.0, 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %d.1 = phi i32 [ %inc9, %if.then ], [ %d.0, %for.body ]
  %j.1 = phi i32 [ %inc, %if.then ], [ %j.0, %for.body ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond11.loopexit:                              ; preds = %for.cond14
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  br label %for.cond11, !llvm.loop !12

for.cond11:                                       ; preds = %for.cond11.loopexit, %for.cond11.preheader
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %for.cond11.loopexit ], [ 0, %for.cond11.preheader ]
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %for.cond11.loopexit ], [ 1, %for.cond11.preheader ]
  %exitcond.not = icmp eq i64 %indvars.iv31, %wide.trip.count
  br i1 %exitcond.not, label %for.cond38, label %for.body13

for.body13:                                       ; preds = %for.cond11
  %arrayidx18 = getelementptr inbounds nuw [1000 x i32], ptr %b, i64 0, i64 %indvars.iv31
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc32, %for.body13
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %for.inc32 ], [ %indvars.iv26, %for.body13 ]
  %4 = trunc nuw i64 %indvars.iv28 to i32
  %cmp15 = icmp sgt i32 %d.0, %4
  br i1 %cmp15, label %for.body16, label %for.cond11.loopexit

for.body16:                                       ; preds = %for.cond14
  %5 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %arrayidx20 = getelementptr inbounds nuw [1000 x i32], ptr %b, i64 0, i64 %indvars.iv28
  %6 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %cmp21 = icmp sgt i32 %5, %6
  br i1 %cmp21, label %if.then22, label %for.inc32

if.then22:                                        ; preds = %for.body16
  store i32 %6, ptr %arrayidx18, align 4, !tbaa !5
  store i32 %5, ptr %arrayidx20, align 4, !tbaa !5
  br label %for.inc32

for.inc32:                                        ; preds = %for.body16, %if.then22
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  br label %for.cond14, !llvm.loop !13

for.cond38:                                       ; preds = %for.cond11, %for.body41
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %for.body41 ], [ 0, %for.cond11 ]
  %exitcond38.not = icmp eq i64 %indvars.iv34, %wide.trip.count
  br i1 %exitcond38.not, label %for.end48, label %for.body41

for.body41:                                       ; preds = %for.cond38
  %arrayidx43 = getelementptr inbounds nuw [1000 x i32], ptr %b, i64 0, i64 %indvars.iv34
  %7 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %call44 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %7)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %call44, ptr noundef nonnull @.str, i64 noundef 1)
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  br label %for.cond38, !llvm.loop !14

for.end48:                                        ; preds = %for.cond38
  %idxprom50 = sext i32 %sub to i64
  %arrayidx51 = getelementptr inbounds [1000 x i32], ptr %b, i64 0, i64 %idxprom50
  %8 = load i32, ptr %arrayidx51, align 4, !tbaa !5
  %call52 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %8)
  call void @llvm.lifetime.end.p0(i64 4000, ptr nonnull %b) #4
  call void @llvm.lifetime.end.p0(i64 4000, ptr nonnull %a) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
