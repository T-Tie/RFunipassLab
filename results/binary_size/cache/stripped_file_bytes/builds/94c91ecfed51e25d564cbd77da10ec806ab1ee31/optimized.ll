; ModuleID = '<stdin>'
source_filename = "/tmp/tmpt77tp_fk.cpp"
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  %vla = alloca i32, i64 %1, align 16
  %vla1 = alloca i32, i64 %1, align 16
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp24 = icmp sgt i32 %3, 0
  br i1 %cmp24, label %for.body, label %for.end39.thread

for.cond11.preheader:                             ; preds = %for.inc
  %cmp1229 = icmp sgt i32 %k.1, 1
  br i1 %cmp1229, label %for.cond14.preheader, label %for.end39.thread

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %k.026 = phi i32 [ %k.1, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %4 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %5 = and i32 %4, -2147483647
  %cmp5 = icmp eq i32 %5, 1
  br i1 %cmp5, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %idxprom8 = sext i32 %k.026 to i64
  %arrayidx9 = getelementptr inbounds i32, ptr %vla1, i64 %idxprom8
  store i32 %4, ptr %arrayidx9, align 4, !tbaa !5
  %inc = add nsw i32 %k.026, 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %k.1 = phi i32 [ %inc, %if.then ], [ %k.026, %for.body ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %6 = load i32, ptr %n, align 4, !tbaa !5
  %7 = sext i32 %6 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %7
  br i1 %cmp, label %for.body, label %for.cond11.preheader, !llvm.loop !9

for.cond14.preheader:                             ; preds = %for.cond11.preheader, %for.inc37
  %indvars.iv37.in = phi i32 [ %indvars.iv37, %for.inc37 ], [ %k.1, %for.cond11.preheader ]
  %i.130 = phi i32 [ %inc38, %for.inc37 ], [ 1, %for.cond11.preheader ]
  %indvars.iv37 = add i32 %indvars.iv37.in, -1
  %cmp1527 = icmp sgt i32 %k.1, %i.130
  br i1 %cmp1527, label %for.body16.preheader, label %for.inc37

for.body16.preheader:                             ; preds = %for.cond14.preheader
  %wide.trip.count = zext i32 %indvars.iv37 to i64
  %.pre = load i32, ptr %vla1, align 16, !tbaa !5
  br label %for.body16

for.body16:                                       ; preds = %for.body16.preheader, %for.inc34
  %8 = phi i32 [ %.pre, %for.body16.preheader ], [ %10, %for.inc34 ]
  %indvars.iv34 = phi i64 [ 0, %for.body16.preheader ], [ %indvars.iv.next35, %for.inc34 ]
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  %arrayidx20 = getelementptr inbounds nuw i32, ptr %vla1, i64 %indvars.iv.next35
  %9 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %cmp21.not = icmp slt i32 %8, %9
  br i1 %cmp21.not, label %for.inc34, label %if.then22

if.then22:                                        ; preds = %for.body16
  %arrayidx18 = getelementptr inbounds nuw i32, ptr %vla1, i64 %indvars.iv34
  store i32 %9, ptr %arrayidx18, align 4, !tbaa !5
  store i32 %8, ptr %arrayidx20, align 4, !tbaa !5
  br label %for.inc34

for.inc34:                                        ; preds = %for.body16, %if.then22
  %10 = phi i32 [ %9, %for.body16 ], [ %8, %if.then22 ]
  %exitcond.not = icmp eq i64 %indvars.iv.next35, %wide.trip.count
  br i1 %exitcond.not, label %for.inc37, label %for.body16, !llvm.loop !12

for.inc37:                                        ; preds = %for.inc34, %for.cond14.preheader
  %inc38 = add nuw nsw i32 %i.130, 1
  %exitcond39.not = icmp eq i32 %inc38, %k.1
  br i1 %exitcond39.not, label %for.end39, label %for.cond14.preheader, !llvm.loop !13

for.end39.thread:                                 ; preds = %for.cond11.preheader, %entry
  %11 = load i32, ptr %vla1, align 16, !tbaa !5
  %call4151 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %11)
  br label %for.end51

for.end39:                                        ; preds = %for.inc37
  %12 = load i32, ptr %vla1, align 16, !tbaa !5
  %call41 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %12)
  %wide.trip.count43 = zext nneg i32 %k.1 to i64
  br label %for.body44

for.body44:                                       ; preds = %for.end39, %for.body44
  %indvars.iv40 = phi i64 [ 1, %for.end39 ], [ %indvars.iv.next41, %for.body44 ]
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  %arrayidx47 = getelementptr inbounds nuw i32, ptr %vla1, i64 %indvars.iv40
  %13 = load i32, ptr %arrayidx47, align 4, !tbaa !5
  %call48 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %13)
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  %exitcond44.not = icmp eq i64 %indvars.iv.next41, %wide.trip.count43
  br i1 %exitcond44.not, label %for.end51, label %for.body44, !llvm.loop !14

for.end51:                                        ; preds = %for.body44, %for.end39.thread
  call void @llvm.stackrestore.p0(ptr %2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn }
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
