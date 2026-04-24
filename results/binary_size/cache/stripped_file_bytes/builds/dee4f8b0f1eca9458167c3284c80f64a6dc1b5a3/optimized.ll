; ModuleID = '<stdin>'
source_filename = "/tmp/tmp9exdzixw.cpp"
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
  %a = alloca [10000 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 10000, ptr nonnull %a) #5
  %vtable.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %0 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !8
  %tobool.not.i.i.i = icmp eq ptr %0, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %entry
  tail call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %entry
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %1 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !28
  %tobool.not.i1.i.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 67
  %2 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !34
  br label %_ZNSi7getlineEPcl.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %0)
  %vtable.i.i.i = load ptr, ptr %0, align 8, !tbaa !5
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %3 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = tail call noundef signext i8 %3(ptr noundef nonnull align 8 dereferenceable(570) %0, i8 noundef signext 10)
  br label %_ZNSi7getlineEPcl.exit

_ZNSi7getlineEPcl.exit:                           ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %2, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call2.i = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %a, i64 noundef 10000, i8 noundef signext %retval.0.i.i.i)
  %call2 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #7
  %conv = trunc i64 %call2 to i32
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %_ZNSi7getlineEPcl.exit
  %num.0 = phi i32 [ 0, %_ZNSi7getlineEPcl.exit ], [ %num.1, %for.inc25 ]
  %i.0 = phi i32 [ 0, %_ZNSi7getlineEPcl.exit ], [ %inc26, %for.inc25 ]
  %idx.ext = sext i32 %i.0 to i64
  %add.ptr = getelementptr inbounds i8, ptr %a, i64 %idx.ext
  %4 = load i8, ptr %add.ptr, align 1, !tbaa !34
  switch i8 %4, label %for.inc25 [
    i8 0, label %for.cond29.preheader
    i8 32, label %land.lhs.true
  ]

for.cond29.preheader:                             ; preds = %for.cond
  %sub30 = sub nsw i32 %conv, %num.0
  %cmp3144 = icmp sgt i32 %sub30, 0
  br i1 %cmp3144, label %for.body33.preheader, label %for.cond.cleanup32

for.body33.preheader:                             ; preds = %for.cond29.preheader
  %wide.trip.count = zext nneg i32 %sub30 to i64
  br label %for.body33

land.lhs.true:                                    ; preds = %for.cond
  %add.ptr11 = getelementptr inbounds nuw i8, ptr %add.ptr, i64 1
  %5 = load i8, ptr %add.ptr11, align 1, !tbaa !34
  %cmp13 = icmp eq i8 %5, 32
  br i1 %cmp13, label %for.cond14.preheader, label %for.inc25

for.cond14.preheader:                             ; preds = %land.lhs.true
  %6 = xor i32 %num.0, -1
  %sub15 = add i32 %6, %conv
  %cmp1642 = icmp slt i32 %i.0, %sub15
  br i1 %cmp1642, label %iter.check, label %for.cond.cleanup17

iter.check:                                       ; preds = %for.cond14.preheader
  %7 = sext i32 %sub15 to i64
  %8 = sub nsw i64 %7, %idx.ext
  %min.iters.check = icmp ult i64 %8, 4
  br i1 %min.iters.check, label %for.body18.preheader, label %vector.main.loop.iter.check

for.body18.preheader:                             ; preds = %vec.epilog.iter.check, %vec.epilog.middle.block, %iter.check
  %indvars.iv.ph = phi i64 [ %idx.ext, %iter.check ], [ %ind.end, %vec.epilog.iter.check ], [ %11, %vec.epilog.middle.block ]
  br label %for.body18

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check52 = icmp ult i64 %8, 16
  br i1 %min.iters.check52, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %8, -16
  %invariant.gep = getelementptr i8, ptr %a, i64 %idx.ext
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep59 = getelementptr i8, ptr %invariant.gep, i64 %index
  %9 = getelementptr inbounds nuw i8, ptr %gep59, i64 1
  %wide.load = load <16 x i8>, ptr %9, align 1, !tbaa !34
  store <16 x i8> %wide.load, ptr %gep59, align 1, !tbaa !34
  %index.next = add nuw i64 %index, 16
  %10 = icmp eq i64 %index.next, %n.vec
  br i1 %10, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %8, %n.vec
  br i1 %cmp.n, label %for.cond.cleanup17, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %ind.end = add nsw i64 %n.vec, %idx.ext
  %n.vec.remaining = and i64 %8, 12
  %min.epilog.iters.check = icmp eq i64 %n.vec.remaining, 0
  br i1 %min.epilog.iters.check, label %for.body18.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vec.epilog.iter.check, %vector.main.loop.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec54 = and i64 %8, -4
  %11 = add nsw i64 %n.vec54, %idx.ext
  %invariant.gep60 = getelementptr i8, ptr %a, i64 %idx.ext
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index55 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next57, %vec.epilog.vector.body ]
  %gep61 = getelementptr i8, ptr %invariant.gep60, i64 %index55
  %12 = getelementptr inbounds nuw i8, ptr %gep61, i64 1
  %wide.load56 = load <4 x i8>, ptr %12, align 1, !tbaa !34
  store <4 x i8> %wide.load56, ptr %gep61, align 1, !tbaa !34
  %index.next57 = add nuw i64 %index55, 4
  %13 = icmp eq i64 %index.next57, %n.vec54
  br i1 %13, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !40

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n58 = icmp eq i64 %8, %n.vec54
  br i1 %cmp.n58, label %for.cond.cleanup17, label %for.body18.preheader

for.cond.cleanup17:                               ; preds = %for.body18, %middle.block, %vec.epilog.middle.block, %for.cond14.preheader
  %dec = add nsw i32 %i.0, -1
  %inc24 = add nsw i32 %num.0, 1
  br label %for.inc25

for.body18:                                       ; preds = %for.body18.preheader, %for.body18
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body18 ], [ %indvars.iv.ph, %for.body18.preheader ]
  %add.ptr20 = getelementptr inbounds i8, ptr %a, i64 %indvars.iv
  %add.ptr21 = getelementptr inbounds nuw i8, ptr %add.ptr20, i64 1
  %14 = load i8, ptr %add.ptr21, align 1, !tbaa !34
  store i8 %14, ptr %add.ptr20, align 1, !tbaa !34
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %cmp16 = icmp slt i64 %indvars.iv.next, %7
  br i1 %cmp16, label %for.body18, label %for.cond.cleanup17, !llvm.loop !41

for.inc25:                                        ; preds = %for.cond, %land.lhs.true, %for.cond.cleanup17
  %num.1 = phi i32 [ %inc24, %for.cond.cleanup17 ], [ %num.0, %land.lhs.true ], [ %num.0, %for.cond ]
  %i.1 = phi i32 [ %dec, %for.cond.cleanup17 ], [ %i.0, %land.lhs.true ], [ %i.0, %for.cond ]
  %inc26 = add nsw i32 %i.1, 1
  br label %for.cond, !llvm.loop !42

for.cond.cleanup32:                               ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %for.cond29.preheader
  %vtable.i24 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i25 = getelementptr i8, ptr %vtable.i24, i64 -24
  %vbase.offset.i26 = load i64, ptr %vbase.offset.ptr.i25, align 8
  %add.ptr.i27 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i26
  %_M_ctype.i.i28 = getelementptr inbounds nuw i8, ptr %add.ptr.i27, i64 240
  %15 = load ptr, ptr %_M_ctype.i.i28, align 8, !tbaa !8
  %tobool.not.i.i.i29 = icmp eq ptr %15, null
  br i1 %tobool.not.i.i.i29, label %if.then.i.i.i41, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i30

if.then.i.i.i41:                                  ; preds = %for.cond.cleanup32
  call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i30: ; preds = %for.cond.cleanup32
  %_M_widen_ok.i.i.i31 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %16 = load i8, ptr %_M_widen_ok.i.i.i31, align 8, !tbaa !28
  %tobool.not.i1.i.i32 = icmp eq i8 %16, 0
  br i1 %tobool.not.i1.i.i32, label %if.end.i.i.i37, label %if.then.i2.i.i33

if.then.i2.i.i33:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i30
  %arrayidx.i.i.i34 = getelementptr inbounds nuw i8, ptr %15, i64 67
  %17 = load i8, ptr %arrayidx.i.i.i34, align 1, !tbaa !34
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i37:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i30
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %15)
  %vtable.i.i.i38 = load ptr, ptr %15, align 8, !tbaa !5
  %vfn.i.i.i39 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i38, i64 48
  %18 = load ptr, ptr %vfn.i.i.i39, align 8
  %call.i.i.i40 = call noundef signext i8 %18(ptr noundef nonnull align 8 dereferenceable(570) %15, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i33, %if.end.i.i.i37
  %retval.0.i.i.i35 = phi i8 [ %17, %if.then.i2.i.i33 ], [ %call.i.i.i40, %if.end.i.i.i37 ]
  %call1.i36 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i35)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i36)
  call void @llvm.lifetime.end.p0(i64 10000, ptr nonnull %a) #5
  ret i32 0

for.body33:                                       ; preds = %for.body33.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %indvars.iv49 = phi i64 [ 0, %for.body33.preheader ], [ %indvars.iv.next50, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ]
  %add.ptr35 = getelementptr inbounds nuw i8, ptr %a, i64 %indvars.iv49
  %19 = load i8, ptr %add.ptr35, align 1, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 %19, ptr %__c.addr.i, align 1, !tbaa !34
  %vtable.i19 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i20 = getelementptr i8, ptr %vtable.i19, i64 -24
  %vbase.offset.i21 = load i64, ptr %vbase.offset.ptr.i20, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i21
  %20 = load i64, ptr %gep, align 8, !tbaa !43
  %cmp.not.i = icmp eq i64 %20, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body33
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %for.body33
  %call2.i23 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %19)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next50, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup32, label %for.body33, !llvm.loop !44
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #4

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"vtable pointer", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !25, i64 240}
!9 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !10, i64 0, !22, i64 216, !12, i64 224, !23, i64 225, !24, i64 232, !25, i64 240, !26, i64 248, !27, i64 256}
!10 = !{!"_ZTSSt8ios_base", !11, i64 8, !11, i64 16, !13, i64 24, !14, i64 28, !14, i64 32, !15, i64 40, !17, i64 48, !12, i64 64, !18, i64 192, !19, i64 200, !20, i64 208}
!11 = !{!"long", !12, i64 0}
!12 = !{!"omnipotent char", !7, i64 0}
!13 = !{!"_ZTSSt13_Ios_Fmtflags", !12, i64 0}
!14 = !{!"_ZTSSt12_Ios_Iostate", !12, i64 0}
!15 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !16, i64 0}
!16 = !{!"any pointer", !12, i64 0}
!17 = !{!"_ZTSNSt8ios_base6_WordsE", !16, i64 0, !11, i64 8}
!18 = !{!"int", !12, i64 0}
!19 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !16, i64 0}
!20 = !{!"_ZTSSt6locale", !21, i64 0}
!21 = !{!"p1 _ZTSNSt6locale5_ImplE", !16, i64 0}
!22 = !{!"p1 _ZTSSo", !16, i64 0}
!23 = !{!"bool", !12, i64 0}
!24 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !16, i64 0}
!25 = !{!"p1 _ZTSSt5ctypeIcE", !16, i64 0}
!26 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !16, i64 0}
!27 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !16, i64 0}
!28 = !{!29, !12, i64 56}
!29 = !{!"_ZTSSt5ctypeIcE", !30, i64 0, !31, i64 16, !23, i64 24, !32, i64 32, !32, i64 40, !33, i64 48, !12, i64 56, !12, i64 57, !12, i64 313, !12, i64 569}
!30 = !{!"_ZTSNSt6locale5facetE", !18, i64 8}
!31 = !{!"p1 _ZTS15__locale_struct", !16, i64 0}
!32 = !{!"p1 int", !16, i64 0}
!33 = !{!"p1 short", !16, i64 0}
!34 = !{!12, !12, i64 0}
!35 = distinct !{!35, !36, !37, !38, !39}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!"llvm.loop.unroll.disable"}
!38 = !{!"llvm.loop.isvectorized", i32 1}
!39 = !{!"llvm.loop.unroll.runtime.disable"}
!40 = distinct !{!40, !36, !37, !38, !39}
!41 = distinct !{!41, !36, !37, !38}
!42 = distinct !{!42, !36, !37}
!43 = !{!10, !11, i64 16}
!44 = distinct !{!44, !36, !37}
