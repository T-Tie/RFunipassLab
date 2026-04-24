; ModuleID = '<stdin>'
source_filename = "/tmp/tmpv2srr9yz.cpp"
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
  %__c.addr.i = alloca i8, align 1
  %a = alloca [500 x i32], align 16
  %N = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %a) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %N) #3
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %N)
  %0 = load i32, ptr %N, align 4, !tbaa !5
  %cmp26 = icmp sgt i32 %0, 0
  br i1 %cmp26, label %for.body, label %for.end58.sink.split

for.cond2.preheader:                              ; preds = %for.body
  %cmp328 = icmp sgt i32 %1, 0
  br i1 %cmp328, label %for.body4.preheader, label %for.end58.sink.split

for.body4.preheader:                              ; preds = %for.cond2.preheader
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %for.body4

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %1 = load i32, ptr %N, align 4, !tbaa !5
  %2 = sext i32 %1 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %2
  br i1 %cmp, label %for.body, label %for.cond2.preheader, !llvm.loop !9

for.cond16.preheader:                             ; preds = %for.inc13
  %sub = add i32 %m.1, -1
  %cmp1735 = icmp sgt i32 %m.1, 1
  br i1 %cmp1735, label %for.cond19.preheader, label %for.end58.sink.split

for.body4:                                        ; preds = %for.body4.preheader, %for.inc13
  %indvars.iv41 = phi i64 [ 0, %for.body4.preheader ], [ %indvars.iv.next42, %for.inc13 ]
  %m.031 = phi i32 [ %1, %for.body4.preheader ], [ %m.1, %for.inc13 ]
  %i.130 = phi i32 [ 0, %for.body4.preheader ], [ %i.2, %for.inc13 ]
  %arrayidx6 = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv41
  %3 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %4 = and i32 %3, 1
  %cmp7.not = icmp eq i32 %4, 0
  br i1 %cmp7.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body4
  %inc10 = add nsw i32 %i.130, 1
  %idxprom11 = sext i32 %i.130 to i64
  %arrayidx12 = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom11
  store i32 %3, ptr %arrayidx12, align 4, !tbaa !5
  br label %for.inc13

if.else:                                          ; preds = %for.body4
  %dec = add nsw i32 %m.031, -1
  br label %for.inc13

for.inc13:                                        ; preds = %if.then, %if.else
  %i.2 = phi i32 [ %inc10, %if.then ], [ %i.130, %if.else ]
  %m.1 = phi i32 [ %m.031, %if.then ], [ %dec, %if.else ]
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next42, %wide.trip.count
  br i1 %exitcond.not, label %for.cond16.preheader, label %for.body4, !llvm.loop !12

for.cond19.preheader:                             ; preds = %for.cond16.preheader, %for.inc44
  %indvars.iv47 = phi i32 [ %indvars.iv.next48, %for.inc44 ], [ %sub, %for.cond16.preheader ]
  %i.336 = phi i32 [ %inc45, %for.inc44 ], [ 0, %for.cond16.preheader ]
  %5 = sub nsw i32 %i.336, %m.1
  %cmp2233 = icmp slt i32 %5, -1
  br i1 %cmp2233, label %for.body23.preheader, label %for.inc44

for.body23.preheader:                             ; preds = %for.cond19.preheader
  %wide.trip.count49 = zext i32 %indvars.iv47 to i64
  %.pre = load i32, ptr %a, align 16, !tbaa !5
  br label %for.body23

for.body23:                                       ; preds = %for.body23.preheader, %for.inc41
  %6 = phi i32 [ %.pre, %for.body23.preheader ], [ %8, %for.inc41 ]
  %indvars.iv44 = phi i64 [ 0, %for.body23.preheader ], [ %indvars.iv.next45, %for.inc41 ]
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  %arrayidx27 = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv.next45
  %7 = load i32, ptr %arrayidx27, align 4, !tbaa !5
  %cmp28 = icmp sgt i32 %6, %7
  br i1 %cmp28, label %if.then29, label %for.inc41

if.then29:                                        ; preds = %for.body23
  %arrayidx25 = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv44
  store i32 %7, ptr %arrayidx25, align 4, !tbaa !5
  store i32 %6, ptr %arrayidx27, align 4, !tbaa !5
  br label %for.inc41

for.inc41:                                        ; preds = %for.body23, %if.then29
  %8 = phi i32 [ %7, %for.body23 ], [ %6, %if.then29 ]
  %exitcond50.not = icmp eq i64 %indvars.iv.next45, %wide.trip.count49
  br i1 %exitcond50.not, label %for.inc44, label %for.body23, !llvm.loop !13

for.inc44:                                        ; preds = %for.inc41, %for.cond19.preheader
  %inc45 = add nuw nsw i32 %i.336, 1
  %indvars.iv.next48 = add i32 %indvars.iv47, -1
  %exitcond51.not = icmp eq i32 %inc45, %sub
  br i1 %exitcond51.not, label %for.end46, label %for.cond19.preheader, !llvm.loop !14

for.end46:                                        ; preds = %for.inc44
  %9 = load i32, ptr %a, align 16, !tbaa !5
  %call48 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %9)
  %wide.trip.count55 = zext nneg i32 %m.1 to i64
  br label %for.body51

for.body51:                                       ; preds = %for.end46, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %indvars.iv52 = phi i64 [ 1, %for.end46 ], [ %indvars.iv.next53, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 44, ptr %__c.addr.i, align 1, !tbaa !15
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !16
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i
  %10 = load i64, ptr %gep, align 8, !tbaa !18
  %cmp.not.i = icmp eq i64 %10, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body51
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %for.body51
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 44)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  %retval.0.i = phi ptr [ %call1.i, %if.then.i ], [ @_ZSt4cout, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %arrayidx54 = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv52
  %11 = load i32, ptr %arrayidx54, align 4, !tbaa !5
  %call55 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %retval.0.i, i32 noundef %11)
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  %exitcond56.not = icmp eq i64 %indvars.iv.next53, %wide.trip.count55
  br i1 %exitcond56.not, label %for.end58, label %for.body51, !llvm.loop !29

for.end58.sink.split:                             ; preds = %for.cond16.preheader, %entry, %for.cond2.preheader
  %12 = load i32, ptr %a, align 16, !tbaa !5
  %call4867 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %12)
  br label %for.end58

for.end58:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %for.end58.sink.split
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %N) #3
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %a) #3
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!15 = !{!7, !7, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"vtable pointer", !8, i64 0}
!18 = !{!19, !20, i64 16}
!19 = !{!"_ZTSSt8ios_base", !20, i64 8, !20, i64 16, !21, i64 24, !22, i64 28, !22, i64 32, !23, i64 40, !25, i64 48, !7, i64 64, !6, i64 192, !26, i64 200, !27, i64 208}
!20 = !{!"long", !7, i64 0}
!21 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!22 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!23 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !24, i64 0}
!24 = !{!"any pointer", !7, i64 0}
!25 = !{!"_ZTSNSt8ios_base6_WordsE", !24, i64 0, !20, i64 8}
!26 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !24, i64 0}
!27 = !{!"_ZTSSt6locale", !28, i64 0}
!28 = !{!"p1 _ZTSNSt6locale5_ImplE", !24, i64 0}
!29 = distinct !{!29, !10, !11}
