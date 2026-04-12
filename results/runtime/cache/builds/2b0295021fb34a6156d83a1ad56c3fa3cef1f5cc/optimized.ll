; ModuleID = '<stdin>'
source_filename = "/tmp/tmpfko69r_d.cpp"
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
  %n = alloca i32, align 4
  %num = alloca i32, align 4
  %a = alloca [500 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num) #5
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %a) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %j.0 = phi i32 [ 1, %entry ], [ %j.1, %for.inc ]
  %i.0 = phi i32 [ 1, %entry ], [ %inc3, %for.inc ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not = icmp sgt i32 %i.0, %0
  br i1 %cmp.not, label %for.cond4.preheader, label %for.body

for.cond4.preheader:                              ; preds = %for.cond
  %1 = add i32 %j.0, -2
  %smax32 = call i32 @llvm.smax.i32(i32 %j.0, i32 1)
  br label %for.cond4

for.body:                                         ; preds = %for.cond
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %num)
  %2 = load i32, ptr %num, align 4, !tbaa !5
  %3 = and i32 %2, 1
  %cmp2.not = icmp eq i32 %3, 0
  br i1 %cmp2.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %idxprom = sext i32 %j.0 to i64
  %arrayidx = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom
  store i32 %2, ptr %arrayidx, align 4, !tbaa !5
  %inc = add nsw i32 %j.0, 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %j.1 = phi i32 [ %inc, %if.then ], [ %j.0, %for.body ]
  %inc3 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.cond4:                                        ; preds = %for.cond4.preheader, %for.inc32
  %indvars.iv29 = phi i32 [ %1, %for.cond4.preheader ], [ %indvars.iv.next30, %for.inc32 ]
  %i.1 = phi i32 [ 1, %for.cond4.preheader ], [ %inc33, %for.inc32 ]
  %exitcond33.not = icmp eq i32 %i.1, %smax32
  br i1 %exitcond33.not, label %for.cond35.preheader, label %for.cond7.preheader

for.cond7.preheader:                              ; preds = %for.cond4
  %smax = call i32 @llvm.smax.i32(i32 %indvars.iv29, i32 0)
  %4 = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %4 to i64
  br label %for.cond7

for.cond35.preheader:                             ; preds = %for.cond4
  %smax37 = call i32 @llvm.smax.i32(i32 %1, i32 0)
  %5 = add nuw i32 %smax37, 1
  %wide.trip.count38 = zext i32 %5 to i64
  br label %for.cond35

for.cond7:                                        ; preds = %for.cond7.backedge, %for.cond7.preheader
  %indvars.iv = phi i64 [ 1, %for.cond7.preheader ], [ %indvars.iv.next, %for.cond7.backedge ]
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %for.inc32, label %for.body11

for.body11:                                       ; preds = %for.cond7
  %arrayidx13 = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv
  %6 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx15 = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv.next
  %7 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %cmp16 = icmp sgt i32 %6, %7
  br i1 %cmp16, label %if.then17, label %for.cond7.backedge

for.cond7.backedge:                               ; preds = %for.body11, %if.then17
  br label %for.cond7, !llvm.loop !12

if.then17:                                        ; preds = %for.body11
  store i32 %7, ptr %arrayidx13, align 4, !tbaa !5
  store i32 %6, ptr %arrayidx15, align 4, !tbaa !5
  br label %for.cond7.backedge

for.inc32:                                        ; preds = %for.cond7
  %inc33 = add nuw i32 %i.1, 1
  %indvars.iv.next30 = add i32 %indvars.iv29, -1
  br label %for.cond4, !llvm.loop !13

for.cond35:                                       ; preds = %for.cond35.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %indvars.iv34 = phi i64 [ 1, %for.cond35.preheader ], [ %indvars.iv.next35, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ]
  %exitcond39 = icmp eq i64 %indvars.iv34, %wide.trip.count38
  br i1 %exitcond39, label %for.end45, label %for.body38

for.body38:                                       ; preds = %for.cond35
  %arrayidx40 = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv34
  %8 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %call41 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %8)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 44, ptr %__c.addr.i, align 1, !tbaa !14
  %vtable.i = load ptr, ptr %call41, align 8, !tbaa !15
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call41, i64 %vbase.offset.i
  %_M_width.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 16
  %9 = load i64, ptr %_M_width.i.i, align 8, !tbaa !17
  %cmp.not.i = icmp eq i64 %9, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body38
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %call41, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %for.body38
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call41, i8 noundef signext 44)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  br label %for.cond35, !llvm.loop !28

for.end45:                                        ; preds = %for.cond35
  %sub = add nsw i32 %j.0, -1
  %idxprom47 = sext i32 %sub to i64
  %arrayidx48 = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom47
  %10 = load i32, ptr %arrayidx48, align 4, !tbaa !5
  %call49 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %10)
  %vtable.i21 = load ptr, ptr %call49, align 8, !tbaa !15
  %vbase.offset.ptr.i22 = getelementptr i8, ptr %vtable.i21, i64 -24
  %vbase.offset.i23 = load i64, ptr %vbase.offset.ptr.i22, align 8
  %add.ptr.i24 = getelementptr inbounds i8, ptr %call49, i64 %vbase.offset.i23
  %call.i25 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i24, i8 noundef signext 10)
  %call1.i26 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call49, i8 noundef signext %call.i25)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i26)
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
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

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!14 = !{!7, !7, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"vtable pointer", !8, i64 0}
!17 = !{!18, !19, i64 16}
!18 = !{!"_ZTSSt8ios_base", !19, i64 8, !19, i64 16, !20, i64 24, !21, i64 28, !21, i64 32, !22, i64 40, !24, i64 48, !7, i64 64, !6, i64 192, !25, i64 200, !26, i64 208}
!19 = !{!"long", !7, i64 0}
!20 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!21 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!22 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !23, i64 0}
!23 = !{!"any pointer", !7, i64 0}
!24 = !{!"_ZTSNSt8ios_base6_WordsE", !23, i64 0, !19, i64 8}
!25 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !23, i64 0}
!26 = !{!"_ZTSSt6locale", !27, i64 0}
!27 = !{!"p1 _ZTSNSt6locale5_ImplE", !23, i64 0}
!28 = distinct !{!28, !10, !11}
